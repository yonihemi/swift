set(CMAKE_SYSTEM_NAME WASI)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR wasm32)
set(triple wasm32-unknown-wasi)

set(CMAKE_Swift_COMPILER "${TARGET_TOOLCHAIN_PATH}/usr/bin/swiftc")
set(CMAKE_C_COMPILER "${TARGET_TOOLCHAIN_PATH}/usr/bin/clang")
set(CMAKE_CXX_COMPILER "${TARGET_TOOLCHAIN_PATH}/usr/bin/clang++")
set(CMAKE_AR "${TARGET_TOOLCHAIN_PATH}/usr/bin/llvm-ar" CACHE STRING "llvm-ar in self built LLVM")
set(CMAKE_RANLIB "${TARGET_TOOLCHAIN_PATH}/usr/bin/llvm-ranlib" CACHE STRING "llvm-ranlib in self built LLVM")
set(CMAKE_C_COMPILER_TARGET ${triple} CACHE STRING "wasi-wasm32 build")
set(CMAKE_CXX_COMPILER_TARGET ${triple} CACHE STRING "wasi-wasm32 build")
set(CMAKE_EXE_LINKER_FLAGS "-Wl,--no-threads" CACHE STRING "wasi-wasm32 build")

set(CMAKE_SYSROOT ${WASI_SYSROOT_PATH} CACHE STRING "wasi-sysroot")

# Don't look in the sysroot for executables to run during the build
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Only look in the sysroot (not in the host paths) for the rest
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE NEVER)

# Some other hacks
set(CMAKE_C_COMPILER_WORKS ON)
set(CMAKE_CXX_COMPILER_WORKS ON)
