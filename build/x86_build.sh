#!/bin/bash

#? BUILD FOR X86
project_home="00_rpi"
sources_home="$project_home/src"
include_home="$project_home/include"
#library_home="/usr/local/lib"
bin_home_dir="$project_home/bin"
bin_output="${bin_home_dir}/modbusPoll" 
sourceFiles=("")
index=0
for file in "$sources_home"/*.c
do
  sourceFiles[$index]=${file}
  ((index=index+1))
done

#Debug version 
echo gcc -Wall -g -o "${bin_output}_dbg.bin" -I "$include_home" "${sourceFiles[@]}"
gcc -Wall -g -o "${bin_output}_dbg.bin" -I "$include_home" "${sourceFiles[@]}" && \
echo "Debug version copilled successful"

#Production version - DONT DEFINE NDEBUG TO KEEP ASSERTS()
echo gcc -D QUIET_OUTPUT -Wall -g -o "${bin_output}.bin" -I "$include_home" "${sourceFiles[@]}"
gcc -D QUIET_OUTPUT -Wall -g -o "${bin_output}.bin" -I "$include_home" "${sourceFiles[@]}" && \
echo "Production version copilled successful"