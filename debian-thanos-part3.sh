xdg-user-dirs-update
cd ~
mkdir -p ~/Pictures/backgrounds
cd ~
cp kitty.conf ~/.config/kitty/
cp theme.conf ~/.config/kitty/
cp picom.conf ~/.config/picom.conf
cp config.rasi ~/.config/rofi/
cp sidetab-dwm.rasi ~/.config/rofi/themes/
mkdir -p ~/.config/gtk-3.0/
mkdir -p ~/.config/gtk-2.0/
mkdir -p ~/.config/dunst/
cp settings.ini ~/.config/gtk-3.0/
cp gtkrc-2.0 ~/.config/gtk-2.0/
cp dunstrc ~/.config/dunst/
sudo cp 30-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
mv debian-dwm-thanos ~/github
cp ~/github/debian-dwm-thanos/.Xresources ~/
cd ~
sudo rm -rf /usr/share/themes/Nordic/
sudo rm -rf /usr/share/icons/Nordzy*
flatpak install flathub com.visualstudio.code-oss -y
sudo apt remove ifupdown -y
sudo rm -rf /etc/network/interfaces
sudo apt autoremove -y
sudo apt autopurge -y
sudo apt autoclean -y
sudo systemctl enable NetworkManager
sudo systemctl restart NetworkManager
