#!/bin/bash

exec > "t_mpi.txt"

echo "MPI type=A"
for th in 1 4 9 16 32
do
echo $th "#### MPI ep.A.$th"
mpirun -np "$th" "./GCC/typeA/ep.A.$th"
echo $th "#### MPI is.A.$th"
mpirun -np "$th" "./GCC/typeA/is.A.$th"
echo $th "#### MPI lu.A.$th"
mpirun -np "$th" "./GCC/typeA/lu.A.$th"
echo $th "#### MPI mg.A.$th"
mpirun -np "$th" "./GCC/typeA/mg.A.$th"
done

echo "MPI type=B"
for th in 1 4 9 16 32
do
echo $th "#### MPI ep.B.$th"
mpirun -np "$th" "./GCC/typeB/ep.B.$th"
echo $th "#### MPI is.B.$th"
mpirun -np "$th" "./GCC/typeB/is.B.$th"
echo $th "#### MPI lu.B.$th"
mpirun -np "$th" "./GCC/typeB/lu.B.$th"
echo $th "#### MPI mg.B.$th"
mpirun -np "$th" "./GCC/typeB/mg.B.$th"
done

echo "MPI type=C"
for th in 1 4 9 16 32
do
echo $th "#### MPI ep.C.$th"
mpirun -np "$th" "./GCC/typeC/ep.C.$th"
echo $th "#### MPI is.C.$th"
mpirun -np "$th" "./GCC/typeC/is.C.$th"
echo $th "#### MPI lu.C.$th"
mpirun -np "$th" "./GCC/typeC/lu.C.$th"
echo $th "#### MPI mg.C.$th"
mpirun -np "$th" "./GCC/typeC/mg.C.$th"
done
