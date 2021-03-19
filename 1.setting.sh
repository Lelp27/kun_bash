#!/bin/bash

reference=/home/kun/Row_data/DB/LacI_GFP/210315_LacI_GFP.fasta
DB=${reference/.fasta/.mmi}
echo $DB
q_folder=/home/kun/210315/kun/20210315_1545_MC-110372_0_aga495_511d1d2d/fastq_pass/barcode09/filter
echo $q_folder
files=$(ls $q_folder/*.fastq)
echo $files
outname=$(basename -s .mmi $DB)
echo $outname
