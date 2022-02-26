#!/bin/bash

#This script installs exvynai's dwm config
#Author: exvynai
#Repo: https://github.com/exvynai/dwm-dotfiles
#Start date: 21 Feb 2022

echo "Starting installation!"
sleep 5

read -p "Enter your username: " username

#packages to install (pacman)
cd
sudo pacman -Syy
sudo pacman -Syu
sudo pacman -S --needed base-devel vim xfce4-terminal git scrot nitrogen sxiv mpv firefox emacs pcmanfm discord ttf-font-awesome ttf-joypixels python-pywal obs-studio xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xbacklight xorg-xprop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono zathura zathura-pdf-mupdf ffmpeg imagemagick fzf man-db xwallpaper unclutter xclip maim zip unzip unrar p7zip xdotool papirus-icon-theme brightnessctl dosfstools ntfs-3g sxhkd pulseaudio vim arc-gtk-theme rsync dash xcompmgr libnotify dunst slock jq dhcpcd networkmanager rsync pamixer xdg-user-dirs picom
cd dwm-dotfiles

echo "packages installed!"
sleep 5

#gotta install yay
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $username:$username ./yay-git
cd yay-git
makepkg -si

echo "yay installed!"
sleep 5

cd ~/dwm-dotfiles

#get xinitrc and bashrc
cp myxinitrc ~/.xinitrc
cp mybashrc ~/.bashrc

echo "done copying bash and xinitrc!"
sleep 5

#get wallpaper
cd 
mkdir pix
cp ~/dwm-dotfiles/girl-red-mask.jpg ~/pix
echo "done copying wallpaper!"
sleep 5

cd ~/dwm-dotfiles

#cp scripts to .local/bin
cd scripts
mkdir ~/.local/bin 
cp battery brightness.sh internet time.sh volume.sh iam.sh ~/.local/bin
cd ..

echo "done copying scripts!"
sleep 5

#make directories
cd dwm && sudo make && sudo make install && cd ..
cd dmenu && sudo make && sudo make install && cd ..
cd dwmblocks && sudo make && sudo make install && cd ..
cd st && sudo make && sudo make install && cd ..
echo "done compiling and building files!"
sleep 5

#changing pywal on terminal
wal -i ~/pix/girl-red-mask.jpg
echo "terminal theme changed!"
sleep 5

#post installation
echo "you need to choose your wallpaper using nitrogen and reboot!"

