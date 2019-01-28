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
<<<<<<< HEAD
yes | pacman -S lighttpd
systemctl enable lighttpd

=======
yes | pacman -S boost
yes | pacman -S qbittorrent
>>>>>>> 5f89af60462a3964d92cc62cd0b2f6cb52e091a2
#aur
#https://aur.archlinux.org/packages/tortoisehg/
