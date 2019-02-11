#!/bin/bash
#https://wiki.archlinux.org/

pip install numpy
pip install pandas
pip install scikit-learn
pip install capstone
pip install pillow
pip install opencv-python
yes | pacman -S gimp
yes | pacman -S tesseract
yes | pacman -S tesseract-data-chi_sim
yes | pacman -S tesseract-data-eng
pip install pytesseract
yes | pacman -S lighttpd
systemctl enable lighttpd
yes | pacman -S boost
yes | pacman -S qbittorrent
yes | pacman -S freerdp
yes | pacman -S fceux

#aur
#https://aur.archlinux.org/packages/tortoisehg/
