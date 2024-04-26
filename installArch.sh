#!/bin/bash
#QosmO2DkMmgcEMm/GpFD+Pbi4HL9+5XmCSt6Dyw
#cd /mnt
#wget https://raw.githubusercontent.com/uniking/archlinux/master/installArch.sh
#wget https://raw.githubusercontent.com/uniking/archlinux/master/chroot.sh

#mirrors
sed -i -e '1iServer = http://mirrors.163.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist

#base
pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash -c "./chroot.sh"
