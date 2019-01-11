#!/bin/bash
cp ./chroot.sh /mnt/chroot.sh
chmod +x /mnt/chroot.sh

pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash -c "./chroot.sh"

