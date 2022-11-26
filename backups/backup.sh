#!/bin/bash

src_dir=/home/ubuntu/shell_script
tgt_dir=/home/ubuntu/backups

current_time=$(date +'%Y-%m-%d-%h-%m-%s')
echo $current_time
backup_file=$tgt_dir/$current_time.tgz
#echo $backup_file

tar czf $backup_file --absolute-name $src_dir
echo "backup complete"

