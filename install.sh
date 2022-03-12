#!/bin/bash

echo "Starting installation!"
sleep 3

read -p "Enter your username: " username

#installing pacman packages
cd
sudo pacman -Syy
sudo pacman -Syu
sudo pacman -S --needed base-devel vim xfce4-terminal scrot nitrogen sxiv mpv pcmanfm discord ttf-font-awesome ttf-joypixels python-pywal obs-studio xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xbacklight xorg-xprop noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono zathura zathura-pdf-mupdf ffmpeg imagemagick fzf man-db xwallpaper unclutter xclip maim zip unzip unrar p7zip xdotool papirus-icon-theme brightnessctl dosfstools ntfs-3g sxhkd pulseaudio arc-gtk-theme rsync pamixer dash xcompmgr libnotify dunst slock jq dhcpcd networkmanager xdg-user-dirs picom 

echo "packages installed!"
sleep 3

#yay installation
cd ~/opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $username:$username ./yay-git
cd yay-git
makepkg -si

echo "Yay installed!"
sleep 3

#installing yay packages
cd
yay -S ani-cli 
yay -S brave-bin

#cp xinitrc and bashrc
cd ~/dwm-dotfiles
cp myxinitrc ~/.xinitrc
cp mybashrc ~/.bashrc
cd 

echo "done copying bashrc and xinitrc!"
sleep 3

#clone wallapers repo
cd
mkdir ~/pix && cd ~/pix
sudo git clone https://github.com/exvynai/wals.git
cd

echo "done getting wallpapers!"
sleep 3

#move scripts
mkdir -p ~/.home/bin
cd ~/dwm-dotfiles/scripts
cp battery internet time.sh volume.sh -t ~/.local/bin
cd ~/.local/bin
chmod +x battery internet time.sh volume.sh
cd

echo "done copying scripts!"
sleep 3

#make all imp dirs
cd ~/dwm-dotfiles
cd dwm && sudo make && sudo make install && cd ..
cd dmenu && sudo make && sudo make install && cd ..
cd dwmblocks && sudo make && sudo make install && cd ..
cd st && sudo make && sudo make install && cd ..
cd

echo "done making all dirs!"
sleep 3

#terminal themeing with pywal
cd
wal -i ~/pix/wals/makimaf\ \(1\).jpg

echo "terminal theme changed!"
sleep 3

#post installation
echo "all done, now just use nitrogen to set your wallpaper and reboot!"


