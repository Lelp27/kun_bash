#!/bin/bash

source /home/kun/git/kun_bash/1.setting.sh

mkdir -p $q_folder/sam/

minimap2 -ax map-ont $DB $files > $q_folder/sam/$outname.sam

echo "Job's Done"