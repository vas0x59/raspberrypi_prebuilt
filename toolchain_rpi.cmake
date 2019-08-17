SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)

SET(ROOT_PATH /home/vasily/rpi/rootfs3)

# Specify the cross compiler
SET(CMAKE_C_COMPILER $ENV{HOME}/rpi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER $ENV{HOME}/rpi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-g++)

# Where is the target environment
SET(CMAKE_FIND_ROOT_PATH $ENV{HOME}/rpi/rootfs3)
SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --sysroot=${CMAKE_FIND_ROOT_PATH}")
SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} --sysroot=${CMAKE_FIND_ROOT_PATH}")
SET(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} --sysroot=${CMAKE_FIND_ROOT_PATH}")

# Search for programs only in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Search for libraries and headers only in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
add_definitions("-Xlinker -rpath-link=/home/vasily/rpi/rootfs3/usr/lib/arm-linux-gnueabihf")
add_definitions("-Xlinker -rpath-link=/home/vasily/rpi/rootfs3/lib/arm-linux-gnueabihf")
INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs3/opt/vc/include)
INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs3/opt/vc/include/interface/vcos/pthreads)
INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs3/opt/vc/include/interface/vmcs_host/linux)

#INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs/usr/include)
#INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs/usr/include/arm-linux-gnueabihf)
INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs3/usr/include/arm-linux-gnueabihf)
INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs3/usr/include)
INCLUDE_DIRECTORIES($ENV{HOME}/rpi/rootfs3/usr/local/include)
