import os
print ("full update on the systejm and then installing yay \n")
os.system("sudo pacman -Syu && sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && yay -Syu")
print ("I use chaddwm bu siduck its a dwm fork but is cool \n now installing packages that aree needed to install chadwm \n")
os.system("yay -Sy dash imlib2 xorg-xsetroot ")
