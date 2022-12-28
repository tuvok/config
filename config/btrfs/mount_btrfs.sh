#!/bin/bash
set -e
#cryptsetup open /dev/sda2 luks-1
#cryptsetup open /dev/sdc2 luks-2

mount -t btrfs -o defaults,noatime,compress=lzo,autodefrag,subvol=systemroot /dev/sda2 /mnt/btrfs_root
mount -t btrfs -o defaults,noatime,compress=lzo,autodefrag,subvol=var /dev/sda2 /mnt/btrfs_root/var
mount -t btrfs -o defaults,noatime,compress=lzo,autodefrag,subvol=home /dev/sda2 /mnt/btrfs_root/home
mount -t btrfs -o defaults,noatime,compress=lzo,autodefrag,subvol=archive /dev/sda2 /mnt/btrfs_root/archive
mount --bind /sys /mnt/btrfs_root/sys/
mount --bind /dev /mnt/btrfs_root/dev/
mount -t proc none /mnt/btrfs_root/proc/
