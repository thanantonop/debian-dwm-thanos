cd ~
mkdir -p ~/Pictures/backgrounds
cd ~/Pictures/backgrounds
git clone https://github.com/thanantonop/nordic-backgrounds.git
cd ~/Pictures/backgrounds/nordic-backgrounds
rm -rf .git
cd ~
cp kitty.conf ~/.config/kitty/
cp picom.conf ~/.config/picom.conf
cp config.rasi ~/.config/rofi/
mv debian-dwm-thanos ~/github
cp ~/github/debian-dwm-thanos/.Xresources ~/
cd ~
