#!/bin/bash

reference=/home/kun/Row_data/DB/LacI_GFP/210315_LacI_GFP.fasta
DB=${reference/.fasta/.mmi}

echo '############################################'

echo 'DB = '$DB
q_folder=/home/kun/210317/kun/20210317_1250_MC-110372_0_aga502_8de00847/filter/unclassified
echo 'folder = '$q_folder
files=$(ls $q_folder/*.fastq)
outname=$(basename -s .mmi $DB)
echo 'outname : '$outname

echo '############################################'
