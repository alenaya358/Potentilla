#!/bin/bash
cp /staging/groups/gillett_stats405_goup6/STACKS-2.64.tar.gz ./
cp -r /staging/groups/gillett_stats405_goup6/stacks_tsv/ ./
cp /staging/groups/gillett_stats405_goup6/popts ./
# Commands to enable modules, and then load an appropriate MP/MPI module
export PATH
. /etc/profile.d/modules.sh
module load GCC/8.3.0
module load OpenMPI/3.1.4-GCC-8.3.0
tar xvfz STACKS-2.64.tar.gz
echo "listing files"
ls
# get all trimmed data in raw folder, output into samples folder, path to a file containing barcodes for this run
./stacks-2.64/gstacks -P ./stacks_tsv -M ./popts -t 8
echo "listing files"
ls
mv stacks_tsv stacks_gs
tar czf stacks_gs.tar.gz stacks_gs
cp stacks_gs.tar.gz /staging/groups/gillett_stats405_goup6
rm -r stacks-2.64
rm STACKS-2.64.tar.gz
rm -r stacks_gs
