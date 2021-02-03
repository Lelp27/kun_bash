#!/bin/bash

source /home/kun/git/kun_bash/aporva/1.setting.sh

mkdir -p $q_folder/sam/

count=0

for i in $q_folder/tag/*.fasta
do
	b=${i##*/}
	c=${b%.*}
	minimap2 -ax map-ont $DB $i > $q_folder/sam/$c.sam
done


echo "Job's Done"