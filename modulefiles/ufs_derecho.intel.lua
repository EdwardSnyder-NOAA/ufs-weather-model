help([[
loads UFS Model prerequisites for NOAA Parallelworks/Intel
]])

setenv("LMOD_TMOD_FIND_FIRST","yes")
--prepend_path("MODULEPATH", "/lustre/desc1/scratch/epicufsrt/contrib/modulefiles_extra")
--prepend_path("MODULEPATH", "/glade/work/epicufsrt/contrib/spack-stack/derecho/spack-stack-1.9.2/envs/ue-oneapi-2024.2.1/install/modulefiles/Core")
--prepend_path("MODULEPATH", "/glade/work/epicufsrt/contrib/spack-stack/derecho/spack-stack-1.9.2/envs/ue-oneapi-2024.2.1/install/modulefiles/cray-mpich/8.1.29-3sepg3g/gcc/12.4.0")
prepend_path("MODULEPATH", "/glade/work/esnyder/ss-192-cont/final/modulefiles/spack-stack-1.9.2/Core")
prepend_path("MODULEPATH", "/glade/work/esnyder/ss-192-cont/final/modulefiles/spack-stack-1.9.2/intel-oneapi-mpi/2021.13-argr3sd/gcc/11.4.0")
--prepend_path("PATH", "/glade/u/apps/derecho/24.12/spack/opt/spack/openmpi/5.0.7/oneapi/2024.2.1/hbfw/bin")

--unload("ncarcompilers")
stack_intel_ver=os.getenv("stack_intel_ver") or "2024.2.0"
load(pathJoin("stack-oneapi", stack_intel_ver))

--stack_cray_mpich_ver=os.getenv("stack-cray-mpich_ver") or "8.1.29"
--load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

--cmake_ver=os.getenv("cmake_ver") or "3.27.9"
--load(pathJoin("cmake", cmake_ver))

stack_impi_ver=os.getenv("stack_impi_ver") or "2021.13"
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

--stack_python_ver=os.getenv("stack_python_ver") or "3.11.7"
--load(pathJoin("stack-python", stack_python_ver))

load("apptainer")
load("ufs_common")
--load("openmpi/5.0.7")
setenv("CMAKE_Platform", "derecho.intel")
--load("ufs-weather-model-env")
--load("sp/2.5.0")
--load("crtm/2.4.0.1")
--load("scotch/7.0.4")

whatis("Description: UFS build environment")
