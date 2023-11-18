# Backing Up PC to External Disk

This is a simple guide to back up your computer's root directory onto an external disk. Note that I am not attempting to backup all the partitions on my computer, just the main one. 

## Pre-Requisites
1. An external disk: SD Card, microSD card, USB, SSD, HDD, etc.  
2. A computer. This guide entails using an Ubuntu Linux OS.  
3. A secure connection between your disk and your computer. This can be physical or remote.  

## Steps For File Transfer
1. Plug your external disk into your computer. Let's call it `/dev/sda1`.  
2. WARNING THIS WILL WIPE YOUR DISK: Format it to match the file system of your root partition. I'll be using "ext4"...  
`sudo mkfs.ext4 /dev/sda1`  
3. Mount the disk to a directory on your computer.  
`sudo mkdir /mnt/backup && sudo mount /dev/sda1 /mnt/backup`
4. Use the `rsync` command to copy your root directory. `rsync` keeps track of files that changed and only transfers data as needed to sync directories. My script looks like this: [www.github.com/EliotKhachi/scripts/blob/main/backupPC.sh](https://github.com/EliotKhachi/scripts/blob/main/backupPC.sh)  

It's worth noting that the `rsync` command supports remote transfers as well. You just need to preface the destination directory with the machine name, i.e. `user@ip:destination-directory`. I recommend doing a local transfer initially since it's a big transfer. You can then move the disk to a machine you have remote access to, such as a raspberry pi, and perform back-ups remotely from there.  

## Tags
#linux #computers
