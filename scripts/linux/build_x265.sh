#!/bin/sh

pushd ../../x265

pushd build
cmake ../source -DENABLE_SHARED=OFF
make
sudo make install
popd

popd


