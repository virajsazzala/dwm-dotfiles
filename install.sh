#!/bin/bash

#This script installs exvynai's dwm config
#Author: exvynai
#Repo: https://github.com/exvynai/dwm-dotfiles
#Start date: 21 Feb 2022

#need to add an if statement to ask the user whether they installed arch or not.
#if installed, continue | else quit

read -p "Enter your username: " username

#packages to install (pacman)
cd
sudo pacman -Syy
sudo pacman -Syu
sudo pacman -S --needed base-devel git scrot nitrogen sxiv mpv firefox emacs pcmanfm discord ttf-font-awesome ttf-joypixels python-pywal obs-studio xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xbacklight xorg-xprop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono zathura zathura-pdf-mupdf ffmpeg imagemagick fzf man-db xwallpaper unclutter xclip maim zip unzip unrar p7zip xdotool papirus-icon-theme brightnessctl dosfstools ntfs-3g sxhkd pulseaudio vim arc-gtk-theme rsync dash xcompmgr libnotify dunst slock jq dhcpcd networkmanager rsync pamixer xdg-user-dirs

cd dwm-dotfiles

#gotta install yay
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $username:$username ./yay-git
cd yay-git
makepkg -si

cd ~/dwm-dotfiles

#get xinitrc and bashrc
cp .xinitrc ~/.xinitrc
cp .bashrc ~/.bashrc
echo "done copying bash and xinitrc!"
sleep 2

#get wallpaper
mkdir pix
cp girl-red-mask.jpg ~/pix
echo "done copying wallpaper!"
sleep 2

#make directories
cd dwm && sudo make && sudo make install && cd ..
cd dmenu && sudo make && sudo make install && cd ..
cd dwmblocks && sudo make && sudo make install && cd ..
cd st && sudo make && sudo make install && cd ..
echo "done compiling and building files!"
sleep 2

#changing pywal on terminal
wal -i ~/pix/girl-red-mask.jpg
echo "terminal theme changed!"
sleep 2

#post installation
echo "you need to choose your wallpaper using nitrogen and reboot!"

