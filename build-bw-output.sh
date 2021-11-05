#!/bin/bash
# echo "REMOVE PREVIOUS BUILD"
# rm -rf bw-output

echo "BUILDING"
mkdir bw-output
g++ -c -Wall -o bw-output/BiggestUnInt src/BiggestUnInt.cc
g++ -c -Wall -o bw-output/HelloWorld src/HelloWorld.cpp
g++ -c -Wall -o bw-output/SimpleClass src/SimpleClass.cc
RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi