#/bin/sh

##ICC
 ##MPI
mv NPB3.3-MPI/config/make.def-icc NPB3.3-MPI/config/make.def

cd NPB3.3-MPI/
make mg CLASS=A NPROCS=2
make mg CLASS=A NPROCS=4
make mg CLASS=A NPROCS=8
make mg CLASS=A NPROCS=16
make mg CLASS=A NPROCS=32
make mg CLASS=B NPROCS=2
make mg CLASS=B NPROCS=4
make mg CLASS=B NPROCS=8
make mg CLASS=B NPROCS=16
make mg CLASS=B NPROCS=32
make mg CLASS=C NPROCS=2
make mg CLASS=C NPROCS=4
make mg CLASS=C NPROCS=8
make mg CLASS=C NPROCS=16
make mg CLASS=C NPROCS=32

make is CLASS=A NPROCS=2
make is CLASS=A NPROCS=4
make is CLASS=A NPROCS=8
make is CLASS=A NPROCS=16
make is CLASS=A NPROCS=32
make is CLASS=B NPROCS=2
make is CLASS=B NPROCS=4
make is CLASS=B NPROCS=8
make is CLASS=B NPROCS=16
make is CLASS=B NPROCS=32
make is CLASS=C NPROCS=2
make is CLASS=C NPROCS=4
make is CLASS=C NPROCS=8
make is CLASS=C NPROCS=16
make is CLASS=C NPROCS=32

make ep CLASS=A NPROCS=2
make ep CLASS=A NPROCS=4
make ep CLASS=A NPROCS=8
make ep CLASS=A NPROCS=16
make ep CLASS=A NPROCS=32
make ep CLASS=B NPROCS=2
make ep CLASS=B NPROCS=4
make ep CLASS=B NPROCS=8
make ep CLASS=B NPROCS=16
make ep CLASS=B NPROCS=32
make ep CLASS=C NPROCS=2
make ep CLASS=C NPROCS=4
make ep CLASS=C NPROCS=8
make ep CLASS=C NPROCS=16
make ep CLASS=C NPROCS=32

make lu CLASS=A NPROCS=2
make lu CLASS=A NPROCS=4
make lu CLASS=A NPROCS=8
make lu CLASS=A NPROCS=16
make lu CLASS=A NPROCS=32
make lu CLASS=B NPROCS=2
make lu CLASS=B NPROCS=4
make lu CLASS=B NPROCS=8
make lu CLASS=B NPROCS=16
make lu CLASS=B NPROCS=32
make lu CLASS=C NPROCS=2
make lu CLASS=C NPROCS=4
make lu CLASS=C NPROCS=8
make lu CLASS=C NPROCS=16
make lu CLASS=C NPROCS=32

cd bin/
mv *.A.* ../../NPB_tests/MPI/ICC/typeA/
mv *.B.* ../../NPB_tests/MPI/ICC/typeB/
mv *.C.* ../../NPB_tests/MPI/ICC/typeC/
cd ../../

mv NPB3.3-MPI/config/make.def NPB3.3-MPI/config/make.def-icc

 ##OMP
mv NPB3.3-OMP/config/make.def-icc NPB3.3-OMP/config/make.def
cd NPB3.3-OMP/
make mg CLASS=A
make mg CLASS=B
make mg CLASS=C

make is CLASS=A
make is CLASS=B
make is CLASS=C

make ep CLASS=A
make ep CLASS=B
make ep CLASS=C

make lu CLASS=A
make lu CLASS=B
make lu CLASS=C

cd bin/
mv *.A.* ../../NPB_tests/OMP/ICC/typeA/
mv *.B.* ../../NPB_tests/OMP/ICC/typeB/
mv *.C.* ../../NPB_tests/OMP/ICC/typeC/
cd ../../


mv NPB3.3-OMP/config/make.def NPB3.3-OMP/config/make.def-icc

 ##SERIAL
mv NPB3.3-SER/config/make.def-icc NPB3.3-SER/config/make.def
cd NPB3.3-SER/
make mg CLASS=A
make mg CLASS=B
make mg CLASS=C

make is CLASS=A
make is CLASS=B
make is CLASS=C

make ep CLASS=A
make ep CLASS=B
make ep CLASS=C

make lu CLASS=A
make lu CLASS=B
make lu CLASS=C

cd bin/
mv *.A.* ../../NPB_tests/SERIAL/ICC/typeA/
mv *.B.* ../../NPB_tests/SERIAL/ICC/typeB/
mv *.C.* ../../NPB_tests/SERIAL/ICC/typeC/
cd ../../


mv NPB3.3-SER/config/make.def NPB3.3-SER/config/make.def-icc

echo "All for ICC done"
