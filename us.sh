#!/bin/bash
cp /staging/groups/gillett_stats405_goup6/STACKS-2.64.tar.gz ./
cp -r /staging/groups/gillett_stats405_goup6/samples/ ./
# Commands to enable modules, and then load an appropriate MP/MPI module
export PATH
. /etc/profile.d/modules.sh
module load GCC/8.3.0
module load OpenMPI/3.1.4-GCC-8.3.0
tar xvfz STACKS-2.64.tar.gz
 
echo "listing files"
ls
mkdir stacks
# get all trimmed data in raw folder, output into samples folder, path to a file containing barcodes for this run
./stacks-2.64/ustacks -f ./samples/A01.fq.gz -o ./stacks -i 1 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A02.fq.gz -o ./stacks -i 2 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A03.fq.gz -o ./stacks -i 3 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A04.fq.gz -o ./stacks -i 4 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A05.fq.gz -o ./stacks -i 5 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A06.fq.gz -o ./stacks -i 6 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A07.fq.gz -o ./stacks -i 7 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A08.fq.gz -o ./stacks -i 8 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A09.fq.gz -o ./stacks -i 9 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A10.fq.gz -o ./stacks -i 10 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A11.fq.gz -o ./stacks -i 11 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/A12.fq.gz -o ./stacks -i 12 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B01.fq.gz -o ./stacks -i 13 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B02.fq.gz -o ./stacks -i 14 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B03.fq.gz -o ./stacks -i 15 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B04.fq.gz -o ./stacks -i 16 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B05.fq.gz -o ./stacks -i 17 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B06.fq.gz -o ./stacks -i 18 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B07.fq.gz -o ./stacks -i 19 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B08.fq.gz -o ./stacks -i 20 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B09.fq.gz -o ./stacks -i 21 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B10.fq.gz -o ./stacks -i 22 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B11.fq.gz -o ./stacks -i 23 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/B12.fq.gz -o ./stacks -i 24 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C01.fq.gz -o ./stacks -i 25 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C02.fq.gz -o ./stacks -i 26 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C03.fq.gz -o ./stacks -i 27 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C04.fq.gz -o ./stacks -i 28 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C05.fq.gz -o ./stacks -i 29 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C06.fq.gz -o ./stacks -i 30 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C07.fq.gz -o ./stacks -i 31 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C08.fq.gz -o ./stacks -i 32 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C09.fq.gz -o ./stacks -i 33 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C10.fq.gz -o ./stacks -i 34 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C11.fq.gz -o ./stacks -i 35 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/C12.fq.gz -o ./stacks -i 36 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D01.fq.gz -o ./stacks -i 37 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D02.fq.gz -o ./stacks -i 38 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D03.fq.gz -o ./stacks -i 39 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D04.fq.gz -o ./stacks -i 40 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D05.fq.gz -o ./stacks -i 41 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D06.fq.gz -o ./stacks -i 42 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D07.fq.gz -o ./stacks -i 43 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D08.fq.gz -o ./stacks -i 44 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D09.fq.gz -o ./stacks -i 45 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D10.fq.gz -o ./stacks -i 46 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D11.fq.gz -o ./stacks -i 47 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/D12.fq.gz -o ./stacks -i 48 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E01.fq.gz -o ./stacks -i 49 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E02.fq.gz -o ./stacks -i 50 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E03.fq.gz -o ./stacks -i 51 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E04.fq.gz -o ./stacks -i 52 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E05.fq.gz -o ./stacks -i 53 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E06.fq.gz -o ./stacks -i 54 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E07.fq.gz -o ./stacks -i 55 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E08.fq.gz -o ./stacks -i 56 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E09.fq.gz -o ./stacks -i 57 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E10.fq.gz -o ./stacks -i 58 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E11.fq.gz -o ./stacks -i 59 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/E12.fq.gz -o ./stacks -i 60 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F01.fq.gz -o ./stacks -i 61 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F02.fq.gz -o ./stacks -i 62 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F03.fq.gz -o ./stacks -i 63 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F04.fq.gz -o ./stacks -i 64 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F05.fq.gz -o ./stacks -i 65 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F06.fq.gz -o ./stacks -i 66 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F07.fq.gz -o ./stacks -i 67 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F08.fq.gz -o ./stacks -i 68 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F09.fq.gz -o ./stacks -i 69 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F10.fq.gz -o ./stacks -i 70 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F11.fq.gz -o ./stacks -i 71 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/F12.fq.gz -o ./stacks -i 72 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G01.fq.gz -o ./stacks -i 73 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G02.fq.gz -o ./stacks -i 74 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G03.fq.gz -o ./stacks -i 75 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G04.fq.gz -o ./stacks -i 76 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G05.fq.gz -o ./stacks -i 77 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G06.fq.gz -o ./stacks -i 78 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G07.fq.gz -o ./stacks -i 79 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G08.fq.gz -o ./stacks -i 80 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G09.fq.gz -o ./stacks -i 81 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G10.fq.gz -o ./stacks -i 82 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G11.fq.gz -o ./stacks -i 83 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/G12.fq.gz -o ./stacks -i 84 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H01.fq.gz -o ./stacks -i 85 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H02.fq.gz -o ./stacks -i 86 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H03.fq.gz -o ./stacks -i 87 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H04.fq.gz -o ./stacks -i 88 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H05.fq.gz -o ./stacks -i 89 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H06.fq.gz -o ./stacks -i 90 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H07.fq.gz -o ./stacks -i 91 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H08.fq.gz -o ./stacks -i 92 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H09.fq.gz -o ./stacks -i 93 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H10.fq.gz -o ./stacks -i 94 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H11.fq.gz -o ./stacks -i 95 -m 3 -M 4 -p 16
./stacks-2.64/ustacks -f ./samples/H12.fq.gz -o ./stacks -i 96 -m 3 -M 4 -p 16

echo "listing files"
ls
tar czf stacks.tar.gz stacks
cp stacks.tar.gz /staging/groups/gillett_stats405_goup6 
rm -r samples
rm -r stacks-2.64
rm STACKS-2.64.tar.gz
