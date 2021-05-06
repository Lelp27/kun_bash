#!/bin/bash

#========== source
q_folder=/home/kun/210428_PRT1/prt10/20210428_0937_MC-110372_0_aga527_2c351fad
sub_folder_name=$(ls -l $q_folder/fastq_pass | grep ^d | awk {'print $9'})
#==========
#Make Filter folder

for i in $sub_folder_name
	do mkdir -p $q_folder/filter/$i
	for i2 in $(ls $q_folder/fastq_pass/$i/*.fastq)
		do NanoFilt -q 7 -l 800 $i2 > $q_folder/filter/$i/$(basename $i2)
	done
done
