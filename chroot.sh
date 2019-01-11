#!/bin/bash
#https://wiki.archlinux.org/

#mirrors
sed -i -e '1iServer = http://mirrors.163.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
echo -e "[archlinuxcn]\nServer = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch\n" >> /etc/pacman.conf
yes | pacman -Sy
yes | pacman -S archlinuxcn-keyring

#env
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "arch" > /etc/hostname
echo -e "127.0.0.1	localhost\n::1		localhost" > /etc/hosts

#user
echo "set root password"
passwd
echo "add general user"
read generaluser
useradd $generaluser
echo "set user password"
passwd $generaluser

#grub
yes | pacman -S grub
echo "set grub-install disk, example input /dev/sdb"
read diskn
grub-install --target=i386-pc $diskn
grub-mkconfig -o /boot/grub/grub.cfg

#network
yes | pacman -S networkmanager
systemctl enable NetworkManager
yes | pacman -S wpa_supplicant

#xorg
yes | pacman -S xorg-server
yes | pacman -S xorg-apps
yes | pacman -S xf86-video-intel

#kde
yes | pacman -S plasma-meta
yes | pacman -S kde-applications-meta
yes | pacman -S sddm
systemctl enable sddm

#input method
yes | pacman -S fcitx-sogoupinyin
yes | pacman -S fcitx-im
yes | pacman -S wqy-bitmapfont
yes | pacman -S wqy-microhei
yes | pacman -S wqy-microhei-lite
yes | pacman -S wqy-zenhei
yes | pacman -S wqy-microhei-kr-patched

#most used software
yes | pacman -S htop
yes | pacman -S tmux
yes | pacman -S openssh
yes | pacman -S mlocate
yes | pacman -S meld
yes | pacman -S wxhexeditor-git
yes | pacman -S dia
yes | pacman -S filezilla
yes | pacman -S google-chrome
yes | pacman -S jdk8-openjdk
yes | pacman -S eclipse-java
yes | pacman -S gpicview
yes | pacman -S google-earth-pro
yes | pacman -S wireshark-cli
yes | pacman -S qtox
yes | pacman -S pacvis-git
yes | pacman -S deluge
yes | pacman -S vlc
yes | pacman -S xpdf
yes | pacman -S wps-office
echo -e "1\nyes" | pacman -S virtualbox
yes | pacman -S linux-headers
modprobe vboxdrv
yes | pacman -S latte-dock
yes | pacman -S shutter
yes | pacman -S jadx
yes | pacman -S anki
yes | pacman -S shadowsocks
yes | pacman -S git

#aur
#https://aur.archlinux.org/packages/tortoisehg/
