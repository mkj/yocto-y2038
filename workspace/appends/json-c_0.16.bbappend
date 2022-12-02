FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/matt/tmp/build/obmc-y2038/workspace/sources/json-c/oe-local-files:"
# srctreebase: /home/matt/tmp/build/obmc-y2038/workspace/sources/json-c

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-json-c = "/home/matt/tmp/build/obmc-y2038/workspace/sources/json-c"

# initial_rev: b7aeee2efbf96c279330d2a3270db7dbeccac47a
# commit: f3865b5a712a382e04b06f518430e41fc43c5b7a

EXTRA_OECMAKE += " -DDISABLE_WERROR=ON"
