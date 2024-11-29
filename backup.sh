#!/bin/bash


<<note
This script The script takes backup of any destination path given in argument

./backup.sh /home/ubuntu/scripts

note

function show_date {

        echo "Today is: $(date '+%Y-%m-%d_%H-%M-%S')"

}

function create_backup() {

timestamp=$(date '+%y-%m-%d_%H-%M-%S')

backup_dir="/home/ubuntu/backups/${timestamp}_backup.zip"

zip -r $backup_dir $1

echo "Backup Complete"

}


show_date
create_backup $1
