help([[
loads UFS Model prerequisites for Ursa/Intel
]])

--prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.9.2/envs/ue-oneapi-2024.2.1/install/modulefiles/Core")
--prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.9.2/envs/ue-oneapi-2024.2.1/install/modulefiles/intel-oneapi-mpi/2021.13-haww6b3/gcc/12.4.0")
prepend_path("MODULEPATH", "/scratch3/NCEPDEV/nems/Edward.Snyder/ss-192-cont/new/modulefiles/spack-stack-1.9.2/Core")
prepend_path("MODULEPATH", "/scratch3/NCEPDEV/nems/Edward.Snyder/ss-192-cont/new/modulefiles/spack-stack-1.9.2/intel-oneapi-mpi/2021.13-argr3sd/gcc/11.4.0")

-- switched ver number
stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2024.2.0"
load(pathJoin("stack-oneapi", stack_oneapi_ver))

stack_impi_ver=os.getenv("stack_impi_ver") or "2021.13"
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

--cmake_ver=os.getenv("cmake_ver") or "3.27.9"
--load(pathJoin("cmake", cmake_ver))

--load("stack-oneapi")
--load("stack-intel-oneapi-mpi")
load("ufs_common")
--load("crtm/2.4.0.1")
nccmp_ver=os.getenv("nccmp_ver") or "1.9.1.0"
load(pathJoin("nccmp", nccmp_ver))
--load("nccmp")

--setenv("CC", "mpiicx")
--setenv("CXX", "mpiicpx")
--setenv("FC", "mpiifort")
--setenv("I_MPI_CC", "icx")
--setenv("I_MPI_CXX", "icpx")
--setenv("I_MPI_F90", "ifort")

setenv("CMAKE_Platform", "ursa.intel")

whatis("Description: UFS build environment")
