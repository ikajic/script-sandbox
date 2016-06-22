#!/bin/bash
# Basic script to rsync root and home, excluding media
    
echo 'Remounting backup as read-write'
mount -o remount,rw /media/ivana/backup/

echo 'Performing rsync backup of / and /home'
rsync -avx --delete --progress --stats  /       /media/ivana/backup/
rsync -avx --delete --progress --stats --exclude-from='exclude.txt'    /home/    /media/ivana/backup/home

echo 'Remounting BACKUP as read-only'
mount -o remount,ro /media/ivana/backup
