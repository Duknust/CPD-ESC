#!/bin/bash

exec > "t_serial.txt"

echo "SERIAL type=A"
echo "#### SERIAL ep.A"
./GCC/typeA/ep.A.x
echo "#### SERIAL is.A"
./GCC/typeA/is.A.x
echo "#### SERIAL lu.A"
./GCC/typeA/lu.A.x
echo "#### SERIAL mg.A"
./GCC/typeA/mg.A.x

echo "SERIAL type=B"
echo "#### SERIAL ep.B"
./GCC/typeB/ep.B.x
echo "#### SERIAL is.B"
./GCC/typeB/is.B.x
echo "#### SERIAL lu.B"
./GCC/typeB/lu.B.x
echo "#### SERIAL mg.B"
./GCC/typeB/mg.B.x

echo "SERIAL type=C"
echo "#### SERIAL ep.C"
./GCC/typeC/ep.C.x
echo "#### SERIAL is.C"
./GCC/typeC/is.C.x
echo "#### SERIAL lu.C"
./GCC/typeC/lu.C.x
echo "#### SERIAL mg.C"
./GCC/typeC/mg.C.x
