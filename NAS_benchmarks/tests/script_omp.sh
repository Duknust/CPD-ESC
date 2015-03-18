#/bin/bash

#THREADS

exec > "t_omp.txt"

for th in 1 4 9 16
do
export OMP_NUM_THREADS=$th
echo $th "#### is.A"
./typeA/bt.A.x
echo $th "#### ep.A"
./typeA/ep.A.x
echo $th "#### lu.A"
./typeA/lu.A.x
echo $th "#### sp.A"
./typeA/sp.A.x

echo $th "#### is.B"
./typeB/bt.B.x
echo $th "#### ep.B"
./typeB/ep.B.x
echo $th "#### lu.B"
./typeB/lu.B.x
echo $th "#### sp.B"
./typeB/sp.B.x
done

