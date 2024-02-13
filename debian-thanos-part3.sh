cd ~
mkdir -p ~/Pictures/backgrounds
cd ~/Pictures/backgrounds
git clone https://github.com/thanantonop/nordic-backgrounds.git
cd ~/Pictures/backgrounds/nordic-backgrounds
rm -rf .git
cd ~
cp kitty.conf ~/.config/kitty/
cp theme.conf ~/.config/kitty/
cp picom.conf ~/.config/picom.conf
cp config.rasi ~/.config/rofi/
mkdir -p ~/.config/gtk-3.0/
mkdir -p ~/.config/gtk-2.0/
mkdir -p ~/.config/dunst/
cp settings.ini ~/.config/gtk-3.0/
cp gtkrc-2.0 ~/.config/gtk-2.0/
cp dunstrc ~/.config/dunst/
sudo cp 30-keyboard.conf /etc/X11/xorg.conf.d/
mv debian-dwm-thanos ~/github
cp ~/github/debian-dwm-thanos/.Xresources ~/
cd ~
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.spotify.Client -y
