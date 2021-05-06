#!/bin/bash

reference=/home/kun/Raw_data/DB/PRT10.fasta
DB=${reference/.fasta/.mmi}

echo '############################################'

echo 'DB = '$DB
q_folder=/home/kun/210428_PRT1/prt10/20210428_0937_MC-110372_0_aga527_2c351fad/filter/barcode01/tag
echo 'folder = '$q_folder
files=$(ls $q_folder/*.fastq)
outname=$(basename -s .mmi $DB)
echo 'outname : '$outname

echo '############################################'
