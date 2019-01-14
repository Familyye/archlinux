#!/bin/bash
#https://wiki.archlinux.org/

yes | pacman -S python-pip
pip install numpy
pip install pandas
pip install scikit-learn
pip install capstone

#aur
#https://aur.archlinux.org/packages/tortoisehg/
