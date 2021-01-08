#!/bin/bash

# Install make
apt-get install build-essential

# Install libssl
apt-get install libssl-dev

# Install GNU Compiler
apt-get install gcc-10 g++-10 gdb
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 100 --slave /usr/bin/g++ g++ /usr/bin/g++-10 --slave /usr/bin/gcov gcov /usr/bin/gcov-10

# Install Ninja-Build
apt-get install ninja-build

# Install CMake
version=3.19
build=2
mkdir ~/temp
cd ~/temp
wget https://cmake.org/files/v$version/cmake-$version.$build.tar.gz
tar -xzvf cmake-$version.$build.tar.gz
cd cmake-$version.$build/
./bootstrap
make
make install



# End of Line