FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/matt/tmp/build/obmc-y2038/workspace/sources/jsnbd/oe-local-files:"
# srctreebase: /home/matt/tmp/build/obmc-y2038/workspace/sources/jsnbd

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-jsnbd = "/home/matt/tmp/build/obmc-y2038/workspace/sources/jsnbd"

# initial_rev: 3ebe3dadd3f550d20080c8bb14dee113e322eb61
