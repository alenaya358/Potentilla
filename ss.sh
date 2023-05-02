#!/bin/bash
cp /staging/groups/gillett_stats405_goup6/STACKS-2.64.tar.gz ./
cp -r /staging/groups/gillett_stats405_goup6/stacks_cs/ ./
# Commands to enable modules, and then load an appropriate MP/MPI module
export PATH
. /etc/profile.d/modules.sh
module load GCC/8.3.0
module load OpenMPI/3.1.4-GCC-8.3.0
tar xvfz STACKS-2.64.tar.gz
echo "listing files"
ls

# get all trimmed data in raw folder, output into samples folder, path to a file containing barcodes for this run
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0001 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0017 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0025 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0010 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0026 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0042 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0027 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0035 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0020 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0036 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0005 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0013 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0021 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0015 -p 15
./stacks-2.64/sstacks -c ./stacks_cs/ -s ./stacks_cs/Sample0024 -p 15
echo "listing files"
ls
mv stacks_cs stacks_ss
tar czf stacks_ss.tar.gz stacks_ss
cp stacks_ss.tar.gz /staging/groups/gillett_stats405_goup6

rm -r stacks-2.64
rm STACKS-2.64.tar.gz
rm -r stacks_cs
