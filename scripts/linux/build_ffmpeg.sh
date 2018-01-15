#!/bin/sh

pushd ../../FFmpeg

PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH

COMMON_FLAGS="--enable-libx264 --enable-libopenh264 --enable-libbluray --disable-programs --enable-static --enable-gpl"

rm -rf build_debug || true
mkdir build_debug

PKG_CONFIG_PATH_BK=$PKG_CONFIG_PATH
PKG_CONFIG_PATH=$(pwd)/../x264/build_debug:$PKG_CONFIG_PATH

./configure --enable-debug=3 --disable-stripping $COMMON_FLAGS --prefix=\"$(pwd)/build_debug/\"

PKG_CONFIG_PATH=$PKG_CONFIG_PATH_BK

rm -rf build_release || true
mkdir build_release

PKG_CONFIG_PATH_BK=$PKG_CONFIG_PATH
PKG_CONFIG_PATH=$(pwd)/../x264/build_release:$PKG_CONFIG_PATH

./configure --disable-debug $COMMON_FLAGS --prefix=\"$(pwd)/build_release/\"

PKG_CONFIG_PATH=$PKG_CONFIG_PATH_BK

popd


