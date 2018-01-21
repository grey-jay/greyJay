pushd ../../cinder/build

rm -rf *

cmake ..
make $@

popd
