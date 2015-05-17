#/bin/bash

#THREADS

exec > "t_omp.txt"

for th in 1 4 9 16
do
export OMP_NUM_THREADS=$th
echo $th "#### GCC/ep.A"
./GCC/typeA/ep.A.x
echo $th "#### GCC/is.A"
./GCC/typeA/is.A.x
echo $th "#### GCC/lu.A"
./GCC/typeA/lu.A.x
echo $th "#### GCC/mg.A"
./GCC/typeA/mg.A.x

echo $th "#### GCC/ep.B"
./GCC/typeB/ep.B.x
echo $th "#### GCC/is.B"
./GCC/typeB/is.B.x
echo $th "#### GCC/lu.B"
./GCC/typeB/lu.B.x
echo $th "#### GCC/mg.B"
./GCC/typeB/mg.B.x

echo $th "#### GCC/ep.C"
./GCC/typeC/ep.C.x
echo $th "#### GCC/is.C"
./GCC/typeC/is.C.x
echo $th "#### GCC/lu.C"
./GCC/typeC/lu.C.x
echo $th "#### GCC/mg.C"
./GCC/typeC/mg.C.x
done

