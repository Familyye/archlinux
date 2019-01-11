#!/bin/bash
cp ./chroot.sh /mnt/chroot.sh
chmod +x /mnt/chroot.sh

#mirrors
sed -i -e 'Server = http://mirrors.163.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
echo -e "[archlinuxcn]\nServer = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch\n" >> /etc/pacman.conf

#base
pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt /bin/bash -c "./chroot.sh"

