#!/bin/bash

CXXFLAGS="-std=c++11 -O2 -march=native -falign-functions=64"

mkdir -p data

cat /proc/cpuinfo > data/cpuinfo
cat /proc/cpuinfo | grep "model name" | head -n 1

for CXX in g++; do
	($CXX --version &> /dev/null) || continue

	echo "=============================="	
	echo "CXX=$CXX    CXXFLAGS=$CXXFLAGS"
	$CXX --version > data/${CXX}_version.txt

	$CXX $CXXFLAGS main.cpp -o test
	./test |& tee data/${CXX}_binary.txt
	objdump ./test --disassemble=hash_table_ok  > data/${CXX}_binary_ok.asm
	objdump ./test --disassemble=hash_table_bad > data/${CXX}_binary_bad.asm
	objdump ./test --disassemble=hash_table_alt > data/${CXX}_binary_alt.asm

	$CXX $CXXFLAGS main.cpp -o test -DUSE_PRIME
	./test |& tee data/${CXX}_prime.txt
	objdump ./test --disassemble=hash_table_ok  > data/${CXX}_prime_ok.asm
	objdump ./test --disassemble=hash_table_bad > data/${CXX}_prime_bad.asm
	objdump ./test --disassemble=hash_table_alt > data/${CXX}_prime_alt.asm
done
