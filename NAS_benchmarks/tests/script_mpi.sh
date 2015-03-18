#!/bin/bash

exec > "t_mpi.txt"

echo "MPI type=A"
for th in 1 4 9 16
do
echo $th "#### MPI bt.A.$th"
mpirun -np "$th ./typeA/bt.A.$th"
echo $th "#### MPI ep.A.$th"
mpirun -np "$th ./typeA/ep.A.$th"
echo $th "#### MPI lu.A.$th"
mpirun -np "$th ./typeA/lu.A.$th"
echo $th "#### MPI sp.A.$th"
mpirun -np "$th ./typeA/sp.A.$th"
done

echo "MPI type=B"
for th in 1 4 9 16
do
echo $th "#### MPI bt.B.$th"
mpirun -np "$th ./typeB/bt.B.$th"
echo $th "#### MPI ep.B.$th"
mpirun -np "$th ./typeB/ep.B.$th"
echo $th "#### MPI lu.B.$th"
mpirun -np "$th ./typeB/lu.B.$th"
echo $th "#### MPI sp.B.$th"
mpirun -np "$th ./typeB/sp.B.$th"
done
