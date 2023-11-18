# Backing Up PC to External Disk

1. Plug your external disk, in this case `/dev/sda`, into your computer.  
2. Create partitions on it (in this case we'll create a GUID partition table (GPT).  
`sudo gdisk /dev/sda`
3. Create a new GPT  
4. In the `gdisk` interactive mode, press `n` to create a new partition. Follow the steps to identify start sectors, end sectors, and the GUID, or partition type.  
5. After creating all your partitions, press `w` to save and write your partition table to the disk.  
6. run `sudo fdisk -l /dev/sda` to verify your disk has the partitions.  
7. You may need to reboot your computer at this point in order for your kernel to recognize the new partition table.  
8. Mount each disk's partition to a directory on your computer:  
```bash
sudo mkdir /mnt/backup_efi
sudo mount /dev/sda1 /mnt/backup_efi

sudo mkdir /mnt/backup_linux1
sudo mount /dev/sda2 /mnt/backup_partition1

sudo mkdir /mnt/backup_linux2
sudo mount /dev/sda3 /mnt/backup_partition2
```

9. Copy files with `rsync`, where `/dev/nvme0n1` is your computer's disk.  
```bash
sudo rsync -avx --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /dev/nvme0n1p1 /mnt/backup_partition1

sudo rsync -avx --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /dev/nvme0n1p2 /mnt/backup_partition2

sudo rsync -avx --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /dev/nvme0n1p3 /mnt/backup_partition3

```

## Tags
#linux #computers
