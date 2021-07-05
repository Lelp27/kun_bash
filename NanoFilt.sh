#!/bin/bash

#Linux permission 지정
umask 000

#========== source
q_folder=/home/seq/NGS/02_ont/2021/210701_DH5a-PLib/dh5a-plib/20210701_0930_MC-110372_0_agw324_ac3da2d2/fastq_pass

sub_folder_name=$(ls -l $q_folder | grep ^d | awk {'print $9'})
#==========
#Make Filter folder

for i in $sub_folder_name
	do mkdir -p $q_folder/filter/$i
	for i2 in $(ls $q_folder/$i/*.fastq)
		do NanoFilt -q 7 -l 500 --maxlength 1500 $i2 > $q_folder/filter/$i/$(basename $i2)
	done
done
