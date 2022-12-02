# Differential builds for 64-bit `time_t`

gcc and clang are able to flag truncated conversions for 64-bit `time_t` with
`-Wconversion`, but it's pretty noisy. Comparing that against a 32-bit `time_t`
build, however, gives a pretty clean list of code that needs attention.

Yocto makes it fairly easy to apply flags to all packages. 
See [conf/local.conf](conf/local.conf).


## Building

This git repo is an OpenBMC build directory. Set up the build, pointing at this checkout:

```shell
bash
umask 022
cd ~/src/openbmc
. setup evb-ast2600 ~/path/to/yocto-y2038
```

Build once with 32-bit, then copy the log files out:

```shell
nice bitbake core-image-full-cmdline # or another target
# TODO perhaps a better way to do includes
(cd tmp/work;  rsync -a armv7ahf-vfpv4d16-openbmc-linux-gnueabi/ ../../log1-32/ --include '*/*/temp/**' --include '/*' --include '/*/*' --include '/*/*' --include '/*/*/temp' --exclude '*')
```

Edit [conf/local.conf](conf/local.conf) and enable the 64-bit `TARGET_CPPFLAGS`.
Clean source and build again 64-bit:

```shell
rm -rf tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/
rm -rf tmp/stamps/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/
nice bitbake core-image-full-cmdline
(cd tmp/work;  rsync -a armv7ahf-vfpv4d16-openbmc-linux-gnueabi/ ../../log1-64/ --include '*/*/temp/**' --include '/*' --include '/*/*' --include '/*/*' --include '/*/*/temp' --exclude '*')
```

Now the logs can be compared:

```shell
./difflog.sh
```

To produce logs such as [diff1/busybox.diff](diff1/busybox.diff).

Some are false positives, but others seem like real problems, come the year 2038.

## Source

I've been working with OpenBMC (a Yocto downstream), so that's what I tested.
This uses OpenBMC source tree https://github.com/openbmc/openbmc/

Tested with rev `f35e6b7ecc6b5c5fdb561643831082226c586b6e`
