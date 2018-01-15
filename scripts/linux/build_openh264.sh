#!/bin/sh

pushd ../../openh264

make clean || true
make ARCH=x86_64 DEBUGSYMBOLS=True
sudo make install

popd

