# Recompile dwm and st
cd ~
rm -rf ~/github/dwm-thanos
rm -rf ~/github/st-thanos
cd ~/github
git clone https://github.com/thanantonop/dwm-thanos.git
git clone https://github.com/thanantonop/st-thanos.git
cd dwm-thanos
sudo make clean install
cd ..
cd st-thanos
sudo make clean install
cd ..
cd debian-dwm-thanos
git pull --rebase
cd ~

# Install Nordzy icons
cd ~/Downloads
git clone https://github.com/alvatip/Nordzy-icon
cd Nordzy-icon/
sudo ./install.sh

# Install Nordzy cursor
cd ~/Downloads
git clone https://github.com/alvatip/Nordzy-cursors
cd Nordzy-cursors
sudo ./install.sh

# Download Nordic Theme
sudo cd /usr/share/themes/
sudo git clone https://github.com/EliverLara/Nordic.git

# Copy configuration files
cd ~
rm -rf ~/.config/kitty/theme.conf
rm -rf ~/.config/rofi/config.rasi
rm -rf ~/.config/rofi/themes/sidetab-dwm.rasi 
rm -rf ~/.config/rofi/themes/sidetab-nord.rasi 
rm -rf ~/.config/gtk-3.0/settings.ini
rm -rf ~/.config/gtk-2.0/gtkrc-2.0 
rm -rf ~/.config/dunst/dunstrc
cd ~/github/debian-dwm-thanos
cp settings.ini ~/.config/gtk-3.0/
cp gtkrc-2.0 ~/.config/gtk-2.0/
cp dunstrc ~/.config/dunst/
cp theme.conf ~/.config/kitty/
cp config.rasi ~/.config/rofi/
cp sidetab-dwm.rasi ~/.config/rofi/themes/
cp sidetab-nord.rasi ~/.config/rofi/themes/
cd ~

