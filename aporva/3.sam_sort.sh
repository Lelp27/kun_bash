#!/bin/bash

source /home/kun/git/kun_bash/aporva/1.setting.sh


mkdir -p $q_folder/bam/
mkdir -p $q_folder/sort/

#merge sam(option)
fastq1=$(ls $q_folder/*.fastq | wc -l)
fastq2=$(expr $fastq1 - 1)

#eval = $fastq를 선계산하고 후에 하는것 ㅠ 이거넣으면 대부분 다될듯
#eval samtools merge -f $q_folder/sam/$m_file.sam $q_folder/sam/{0..$fastq2}.sam

for i in $q_folder/sam/*.sam
do
	b=${i##*/}
	c=${b%.*}
	samtools view -bS $q_folder/sam/$c.sam > $q_folder/bam/$c.bam
	samtools sort $q_folder/bam/$c.bam -o $q_folder/sort/$c-sorted.bam
	samtools index $q_folder/sort/$c-sorted.bam
done


#sort , index
#samtools sort $q_folder/bam/$m_file.bam -o $q_folder/sort/$m_file-sorted.bam
#samtools index $q_folder/sort/$m_file-sorted.bam

#samtools flagstat $q_folder/sort/$m_file-sorted.bam

