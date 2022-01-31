#!/bin/bash

# get cmake

wget https://github.com/Kitware/CMake/releases/download/v3.22.2/cmake-3.22.2-linux-x86_64.sh
chmod +x cmake-3.22.2-linux-x86_64.sh
mkdir cmake
./cmake-3.22.2-linux-x86_64.sh --skip-license --prefix=cmake

# Check out RooUnfold

git clone https://gitlab.cern.ch/RooUnfold/RooUnfold.git
mkdir RooUnfold/build
cd RooUnfold/build
$HOME/cmake/bin/cmake ../
make RooUnfold

export ROOUNFOLD=$(PWD) 
export LD_LIBRARY_PATH=$ROOUNFOLD:$LD_LIBRARY_PATH
