#!/bin/bash

source /home/kun/git/bash/1.setting.sh

mkdir -p $q_folder/sam/

count=0

for i in $q_folder/*.fastq
do
	minimap2 -ax map-ont $DB $i > $q_folder/sam/$count.sam
	let count=$count+1
done


echo "Job's Done"