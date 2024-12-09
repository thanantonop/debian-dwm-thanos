xdg-user-dirs-update
cd ~
mkdir -p ~/Pictures/backgrounds
cd ~
cp kitty.conf ~/.config/kitty/
cp theme.conf ~/.config/kitty/
cp nord.conf ~/.config/kitty/
cp picom.conf ~/.config/picom.conf
mkdir -p ~/.config/gtk-3.0/
mkdir -p ~/.config/gtk-2.0/
mkdir -p ~/.config/dunst/
cp settings.ini ~/.config/gtk-3.0/
cp gtkrc-2.0 ~/.config/gtk-2.0/
cp dunstrc ~/.config/dunst/
rm -rf ~/.config/rofi
cp -R rofi ~/.config/
cp -R alacritty ~/.config/
sudo cp 30-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
mv debian-dwm-thanos ~/github
cp ~/github/debian-dwm-thanos/.Xresources ~/
cd ~
sudo rm -rf /usr/share/themes/Nordic/
sudo rm -rf /usr/share/icons/Nordzy*
flatpak install flathub com.visualstudio.code -y
flatpak install flathub org.onlyoffice.desktopeditors -y
sudo apt remove ifupdown -y
sudo rm -rf /etc/network/interfaces
sudo apt autoremove -y
sudo apt autopurge -y
sudo apt autoclean -y
sudo systemctl enable NetworkManager
sudo systemctl restart NetworkManager
cd ~
mv debian-titus ~/github
unlink ~/.bashrc
unlink ~/.config/starship.toml
sudo chown -R thanos:thanos ~/github/debian-titus
rm -rf ~/.bashrc.bak
rm -rf ~/.bashrc.orig
rm -rf ~/github/debian-titus/mybash/.bashrc
cd ~
cp bashrc ~/github/debian-titus/mybash/.bashrc
ln -s /home/thanos/github/debian-titus/mybash/.bashrc .bashrc
cd ~/.config
ln -s /home/thanos/github/debian-titus/mybash/starship.toml starship.toml
cd ~
cp bashrc.orig ~/.bashrc.bak
cp bashrc.orig ~/.bashrc.orig
echo Done

