#Incremental btrfs backup

mount /dev/sdi1 /mnt/btrfs_root/

btrfs subvolume snapshot -r / /BACKUP-date
btrfs subvolume snapshot -r /archive /archive/BACKUP-date
btrfs subvolume snapshot -r /home /home/BACKUP-date
btrfs subvolume snapshot -r /var /var/BACKUP-date

btrfs send -p /BACKUP-old /BACKUP-new | btrfs receive /mnt/btrfs_root/systemroot/

#btrfs subvolume delete /BACKUP
#mv /home/BACKUP-new /BACKUP

umount /mnt/btrfs_root
