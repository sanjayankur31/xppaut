cmake_minimum_required(VERSION 2.6)
project(xppaut)

set (CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/extra)

set (xppaut_VERSION_MAJOR 8)
set (xppaut_VERSION_MINOR 0)

set(CMAKE_BUILD_TYPE RELEASE)
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -g -D_XOPEN_SOURCE=600 -std=c99  -DNOERRNO -DNON_UNIX_STDIO -DAUTO -DCVODE_YES -DHAVEDLL")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lm -ldl")
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")

configure_file (
    "${PROJECT_SOURCE_DIR}/src/xppautConfig.h.in"
    "${PROJECT_BINARY_DIR}/xppautConfig.h"
    )
include_directories("${PROJECT_BINARY_DIR}")

find_package(X11 REQUIRED)
#find_package(SUNDIALS REQUIRED)
#cannot use system library unti a static library is available
#find_package(F2C REQUIRED)
#find_package(SBML REQUIRED)

ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(data)
ADD_SUBDIRECTORY(doc)
