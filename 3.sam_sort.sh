#!/bin/bash

source /home/kun/git/kun_bash/1.setting.sh


#sam to bam
samtools view -bS -F 0x900 -F 0x4 $q_folder/sam/$outname.sam > $q_folder/sam/$outname.bam

#sort , index
samtools sort $q_folder/sam/$outname.bam -o $q_folder/sam/$outname-sorted.bam
samtools index $q_folder/sam/$outname-sorted.bam
samtools flagstat $q_folder/sam/$outname-sorted.bam
