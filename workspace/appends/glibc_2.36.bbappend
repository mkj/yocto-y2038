FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/matt/tmp/build/obmc-y2038/workspace/sources/glibc/oe-local-files:"
# srctreebase: /home/matt/tmp/build/obmc-y2038/workspace/sources/glibc

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-glibc = "/home/matt/tmp/build/obmc-y2038/workspace/sources/glibc"

# initial_rev: c399271c10bd00714504e8d4dfbec8aebf996dd4
# commit: d79c4fe9c599d966205a9a37c672e58522dffe98
# commit: 81a65186ea7a81affd7b05e92c7e56e0e25f8945
# commit: 2a5a07c965afb5954e87282d4b14b65d34f225c7
# commit: 9f6beec294d60dce2f337b5887911700b4a1a2f0
# commit: 9b8cbb83ba8f76d97d7f3695a2a92d98f5d8b8f3
# commit: 760812d92896bb477826594975489b2220deff9c
# commit: 2d8572e264d2299e8c30aa6f92ec590a628c04b1
# commit: 465f3cce31b23da6b0bf043ae37052ac8c33eb6c
# commit: 703ef5b2dca4428a740281caa209d7c5e138ab3e
# commit: 54138e6c174c01769107c4462632088479e4eee3
# commit: c12e77777560959eb0b0c04508808108f5133a02
# commit: 5f75c0a683d0d297522293c5dc5fc6bbf96e22c9
# commit: 9e8a5bc821de129a7ed1dcb8a79776725d656adc
# commit: f2880e2987de3b4bc309c0bf2816618aad3d254e
# commit: 9e032dfad5a39c7a5a96a3b42030506759e648bc
# commit: c0686461661def40589a3a97880bf59da4210f2d
# commit: 1dc9df09c81e5ed5bf52c27b208539941ca40337
# commit: d924f657608b4aafc637097c44c051841d3d32a0

EXTRA_OECONF += " --disable-werror"
