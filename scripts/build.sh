pushd `dirname $0`
pushd ../src

mkdir -p ../build

g++ -Wall main.cpp greeter.cpp -o ../build/hello_world

popd
popd
