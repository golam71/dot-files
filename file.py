import os
os.system("")
print ("full update on the systejm and then installing yay & git \n")
os.system("sudo pacman -Syu && sudo pacman -S --needed git base-devel && sudo pacman -S git && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && yay -Syu")
print ("I use chadwm by siduck its a dwm fork but is cool \n now installing packages that are needed to install chadwm \n")
os.system("yay -Sy dash wget imlib2 ripgrep neovim xorg-xsetroot nerd-fonts-jetbrains-mono ttf-material-design-icons ttf-material-design-icons-desktop-git picom feh acpi rofi eww-git")

os.system ("mkdir chad && cd chad")

os.system ("git clone https://github.com/siduck/chadwm --depth 1  ~/.config && cd ~/.config/chadwm/ && mv eww ~/.config && sudo make clean install && cp -r ~/.config/chadwm/eww ~/.config/")
print ("now creating .desktop file to run chadwm")
os.system("sudo touch /usr/share/xsessions/chadwm.desktop")
print ("you have to add the following in your  /usr/share/xsessions/chadwm.desktop")
print (""" 
[Desktop Entry]
Name=chadwm
Comment=dwm made beautiful 
Exec=/home/user/.config/chadwm/scripts/./run.sh 
Type=Application 
""")
os.system("cp -r ~/.config/chadwm/eww ~/.config/")
os.system("cp -r ~/.config/chadwm/rofi ~/.config/")

print ("now installing st")

os.system("cd ..") #getting back to chad directory 
os.system("https://github.com/siduck/tabbed.git && cd tabbed && sudo make clean install")
os.system("wget https://github.com/siduck/chadwm/blob/main/.Xresources") #getting siducks onedark .Xresources
os.system("xrdb merge .Xresources && mv .Xresources ~")

print ("Now installing NVchad")

os.system("git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 ; nvim")


print ("Now getting wallpapers")
os.system("cd && mkdir Pictures/Wallpapers")
os.system("")
os.system("")
os.system("")
os.system("")

print ("""
Assalamualykum
it has finished
if u have any issues or bugs or problems suggestion pls make a issue here https://github.com/golam71/dot-files/file.py
""")



