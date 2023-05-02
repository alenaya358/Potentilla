#!/bin/bash
cp /staging/groups/gillett_stats405_goup6/STACKS-2.64.tar.gz ./
cp -r /staging/groups/gillett_stats405_goup6/raw/ ./
cp /staging/groups/gillett_stats405_goup6/GBS-ApeKI_barcodes ./
# Commands to enable modules, and then load an appropriate MP/MPI module
export PATH
. /etc/profile.d/modules.sh
module load GCC/8.3.0
module load OpenMPI/3.1.4-GCC-8.3.0

tar xvfz STACKS-2.64.tar.gz
tar xvfz raw/Potentilla_2018-04-10_longreads.tar.gz  
echo "listing files"
ls
mkdir samples
# get all trimmed data in raw folder, output into samples folder, path to a file containing barcodes for this run
./stacks-2.64/process_radtags -p ./raw/ -o ./samples/ -b ./GBS-ApeKI_barcodes -e sbfI -r -c -q
echo "listing files"
ls
tar czf samples.tar.gz samples
cp samples.tar.gz /staging/groups/gillett_stats405_goup6 
rm Potentilla_2018-04-10_longreads.tar.gz
rm Potentilla_2018-04-10_longreads.fastq
rm output_prefix000
rm -r stacks-2.64
rm STACKS-2.64.tar.gz
