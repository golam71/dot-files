import os
print ("full update on the systejm and then installing yay & git \n")
os.system("sudo pacman -Syu && sudo pacman -S --needed git base-devel && sudo pacman -S git && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && yay -Syu")
print ("I use chadwm by siduck its a dwm fork but is cool \n now installing packages that are needed to install chadwm \n")
os.system("yay -Sy dash imlib2 xorg-xsetroot nerd-fonts-jetbrains-mono ttf-material-design-icons  picom feh acpi rofi eww-git")
os.system ("git clone https://github.com/siduck/chadwm --depth 1  ~/.config && cd ~/.config/chadwm/ && mv eww ~/.config && sudo make install && cp -r ~/.config/chadwm/eww ~/.config/")
print ("now creating .desktop file to run chadwm")
os.system("sudo touch /usr/share/xsessions/chadwm.desktop")
