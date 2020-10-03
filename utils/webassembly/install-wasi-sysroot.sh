#!/bin/bash

set -eu

SOURCE_PATH="$( cd "$(dirname $0)/../../../" && pwd  )"
WASI_SYSROOT_TAR="$SOURCE_PATH/wasi-sysroot.tar.gz"
WASI_SYSROOT_INSTALL_PATH="$SOURCE_PATH/wasi-sysroot"

WASI_LIBC_TAG=swift-wasm-DEVELOPMENT-SNAPSHOT-2020-10-03-a
WASI_SYSROOT_URL="https://github.com/swiftwasm/wasi-libc/releases/download/$WASI_LIBC_TAG/wasi-sysroot.tar.gz"

rm -f "$WASI_SYSROOT_TAR"
wget -O "$WASI_SYSROOT_TAR" $WASI_SYSROOT_URL

rm -rf "$WASI_SYSROOT_INSTALL_PATH"
tar xfz "$WASI_SYSROOT_TAR" -C "$(dirname "$WASI_SYSROOT_INSTALL_PATH")"
