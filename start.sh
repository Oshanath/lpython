#! /bin/bash

conda activate lp
./build0.sh
cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_LLVM=yes -DWITH_STACKTRACE=yes -DWITH_LFORTRAN_BINARY_MODFILES=no .
cmake --build . -j16
ctest
./run_tests.py
./integration_tests/run_tests.py
