#!/bin/sh

echo 
echo "####### Start measuring #######"

echo "Assembly version"
time ./run_bin.sh main_asm
echo

echo "Dynamic binary"
time ./run_bin.sh main_c_d
echo

echo "Static binary"
time ./run_bin.sh main_c_s
echo

echo "####### Done measuring #######"
