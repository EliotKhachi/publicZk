# Read ZFS Drive

1. Plug in drive  

2. Confirm it's visible  
`diskutil list`

3. Load the ZFS kernel extension (should already be installed and authorized on your Mac)  
`sudo /sbin/kextload /Library/Extensions/zfs.kext`

4. Import the ZFS pool to `/Volumes`  
`sudo zpool import -o readonly=on backup-pool-new`  

*Use files at /Volumes/backup-pool-new...*  

5. Export pool  
`sudo zpool export backup-pool-new` 

## Tags
#macos #drives
