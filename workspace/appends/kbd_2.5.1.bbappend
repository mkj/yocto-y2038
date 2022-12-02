FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/matt/tmp/build/obmc-y2038/workspace/sources/kbd/oe-local-files:"
# srctreebase: /home/matt/tmp/build/obmc-y2038/workspace/sources/kbd

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-kbd = "/home/matt/tmp/build/obmc-y2038/workspace/sources/kbd"

# initial_rev: 226bf1c95a2565a29d22601298b8b0d38b0701b1

# libtool fail linking tests because of __ioctl_time64 symbol somehow?
EXTRA_OECONF += " --disable-tests"
