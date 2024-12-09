# Install required packages
sudo apt install python3 python3-pip lsd bat dunst xbacklight stterm neovim mpv cmus audacious geany meld libreoffice libreoffice-gtk3 abiword emacs gimp stellarium transmission-gtk evince keepassxc inkscape darktable krita filezilla qimgv blueman lxappearance flatpak thunar thunar-volman thunar-archive-plugin dmenu acpi numlockx playerctl scrot sysstat xbindkeys feh galculator file-roller gvfs jq x11-utils tumbler vlc ttf-mscorefonts-installer chromium cherrytree xournal tree redshift synaptic conky-all cups gvfs-backends lm-sensors alacritty kitty fish i3lock mugshot fontforge papirus-icon-theme arc-theme fonts-crosextra-carlito fonts-crosextra-caladea fonts-powerline fonts-font-awesome fonts-ubuntu fonts-ubuntu-console fonts-liberation fonts-liberation2 fonts-terminus -y
sudo apt install multitail tree zoxide trash-cli fzf bash-completion -y
sudo apt install network-manager-gnome lightdm-gtk-greeter-settings celluloid timeshift gdebi gparted gufw thunderbird handbrake audacity hexchat -y
sudo apt install xfce4 xfce4-goodies catfish -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub org.onlyoffice.desktopeditors -y

# Recompile dwm and st
cd ~
rm -rf ~/github/dwm-thanos
rm -rf ~/github/st-thanos
cd ~/github
git clone https://github.com/thanantonop/dwm-thanos.git
git clone https://github.com/thanantonop/st-thanos.git
cd dwm-thanos
sudo make clean install
cd slstatus
sudo make clean install
cd ~/github
cd st-thanos
sudo make clean install
cd ..
cd debian-dwm-thanos
git pull --rebase
cd ~

# Copy configuration files
cd ~
rm -rf ~/.config/kitty/kitty.conf 
rm -rf ~/.config/kitty/theme.conf
rm -rf ~/.config/gtk-3.0/settings.ini
rm -rf ~/.config/gtk-2.0/gtkrc-2.0 
rm -rf ~/.config/dunst/dunstrc
rm -rf ~/.config/picom.conf
rm -rf ~/.config/rofi
cd ~/github/debian-dwm-thanos
cp settings.ini ~/.config/gtk-3.0/
cp gtkrc-2.0 ~/.config/gtk-2.0/
cp dunstrc ~/.config/dunst/
cp kitty.conf ~/.config/kitty/
cp theme.conf ~/.config/kitty/
cp nord.conf ~/.config/kitty/
cp picom.conf ~/.config/
cp -R rofi ~/.config/
cp -R alacritty ~/.config/
cd ~

# Install Fonts
cd ~/Downloads
git clone https://github.com/thanantonop/fonts.git
cp -R fonts ~/github/
rm -rf ~/Downloads/fonts/.git
rm -rf ~/.fonts
mv fonts ~/.fonts
rm -rf FiraCode.zip 
rm -rf Meslo.zip 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Meslo.zip
unzip FiraCode.zip -d ~/.fonts
unzip Meslo.zip -d ~/.fonts
cd ~

# Install Nord-backgrounds
cd ~/Pictures
rm -rf ~/Pictures/backgrounds
git clone https://github.com/thanantonop/nord-backgrounds.git
mv nord-backgrounds backgrounds
cd ~
echo Done
