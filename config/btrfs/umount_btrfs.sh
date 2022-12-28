#!/bin/bash

umount /mnt/btrfs_root/var
umount /mnt/btrfs_root/sys/
umount /mnt/btrfs_root/dev/
umount /mnt/btrfs_root/proc/
umount /mnt/btrfs_root

#cryptsetup close luks-1
#cryptsetup close luks-2
