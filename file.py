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
os.system("cd && mkdir Pictures/Wallpapers cd Pictures/Wallpapers")
os.system("wget https://user-images.githubusercontent.com/59060246/159384632-834ab716-649c-4c88-b5e1-d80ca798e6db.jpg")
os.system("wget https://user-images.githubusercontent.com/59060246/159384646-5fce8f8e-882d-433d-a212-f0cc64eec563.png")
os.system("wget https://user-images.githubusercontent.com/59060246/159384672-993c309b-a8b0-4c31-9148-e1d5e1cb4e0e.png")
os.system("wget https://user-images.githubusercontent.com/59060246/159384688-837b150e-fb3a-4292-bc3a-ed1f1db4760f.png")
os.system("wget https://user-images.githubusercontent.com/59060246/159384705-732072db-ced5-4d11-b6bf-7e88138bae15.jpg")
os.system("wget https://user-images.githubusercontent.com/59060246/159384724-fd3a0512-5da1-4079-a437-bc3cc3971c55.png")
os.system("wget https://user-images.githubusercontent.com/59060246/159384730-1ba25368-d5fb-4b2c-9d8e-0933b1b2f3d1.png")
os.system("wget https://user-images.githubusercontent.com/59060246/159384737-a9ac14c8-fd0f-4947-8475-116348540d88.jpg")
os.system("wget https://user-images.githubusercontent.com/59060246/159384752-11d478e3-84ac-4098-8e64-2df6101d5500.png")
os.system("wget https://user-images.githubusercontent.com/59060246/159384791-c28b17cb-9acc-4c55-89dc-49edd4bec765.png")


print ("""
Assalamualykum
it has finished
if u have any issues or bugs or problems suggestion pls make a issue here https://github.com/golam71/dot-files/file.py
""")



