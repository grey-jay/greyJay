#!/bin/sh

pushd ../../x264

COMMON_FLAGS="--enable-static"

rm -rf build_debug || true
mkdir build_debug && pushd build_debug
../configure --prefix=$(pwd) $COMMON_FLAGS --enable-debug
make
make install
popd

rm -rf build_release || true
mkdir build_release && pushd build_release
../configure --prefix=$(pwd) $COMMON_FLAGS --enable-strip --enable-lto
make
make install
popd

popd


