help([[
loads UFS Model prerequisites for NOAA Parallelworks/GNU
]])

prepend_path("MODULEPATH", "/contrib/Edward.Snyder/gnu-cont/auto-built/w-cont-scripts/modulefiles/spack-stack-1.9.2/Core")
prepend_path("MODULEPATH", "/contrib/Edward.Snyder/gnu-cont/auto-built/w-cont-scripts/modulefiles/spack-stack-1.9.2/container-software/modulefiles")

load("gnu/13.3.1")
load("openmpi/4.1.6")

load("stack-gcc")
load("stack-openmpi")

load("ufs_common")

setenv("CMAKE_Platform", "noaacloud.gnu")

whatis("Description: UFS build environment")
