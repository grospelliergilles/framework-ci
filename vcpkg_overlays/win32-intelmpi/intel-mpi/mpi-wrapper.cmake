get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Needed to find 'mpiexec'
set(ENV{I_MPI_ROOT} "${_IMPORT_PREFIX}/tools/intel-mpi")

set(MPI_C_ADDITIONAL_INCLUDE_DIRS "${_IMPORT_PREFIX}/include" CACHE STRING "MPI C additional include directories" FORCE)
set(MPI_CXX_ADDITIONAL_INCLUDE_DIRS "${_IMPORT_PREFIX}/include" CACHE STRING "MPI CXX additional include directories" FORCE)

set(MPI_C_COMPILER "${_IMPORT_PREFIX}/tools/intel-mpi/mpicc.bat" CACHE STRING "MPI C Compiler" FORCE)
set(MPI_CXX_COMPILER "${_IMPORT_PREFIX}/tools/intel-mpi/mpicxx.bat" CACHE STRING "MPI C Compiler" FORCE)

unset(_IMPORT_PREFIX)

_find_package(${ARGS})
