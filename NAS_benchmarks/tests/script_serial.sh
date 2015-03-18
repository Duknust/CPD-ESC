#!/bin/bash

exec > "t_serial.txt"

echo "SERIAL type=A"
echo "#### SERIAL bt.A"
./typeA/bt.A.x
echo "#### SERIAL ep.A"
./typeA/ep.A.x
echo "#### SERIAL lu.A"
./typeA/lu.A.x
echo "#### SERIAL sp.A"
./typeA/sp.A.x

echo "SERIAL type=B"
echo "#### SERIAL bt.B"
./typeB/bt.B.x
echo "#### SERIAL ep.B"
./typeB/ep.B.x
echo "#### SERIAL lu.B"
./typeB/lu.B.x
echo "#### SERIAL sp.B"
./typeB/sp.B.x
