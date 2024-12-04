# Script to remove the dwm and all the related to it programs and leave only as default the XFCE

# Remove the complied dwm st and dmenu
cd ~
cd ~/github/dwm-thanos/slstatus
sudo make uninstall
cd ~/github/dwm-thanos
sudo make uninstall
cd ~/github/dmenu-thanos
sudo make uninstall
cd ~/github/st-thanos
sudo make uninstall
cd ~

# Remove unwanted packages for the dwm
sudo apt purge dwm stterm dmenu rofi arandr dunst i3lock arc-theme papirus-icon-theme xbacklight lxappearance xbindkeys -y

# Install required packages on the XFCE
sudo apt install packaging-dev build-essential automake autoconf git vim ranger htop nmap neofetch sudo efibootmgr -y
sudo apt install firmware-iwlwifi -y
sudo apt install lightdm x11-xserver-utils xorg xcb libx11-xcb-dev libxcb-res0-dev libimlib2-dev network-manager alsa-utils zoxide trash-cli ufw libglib2.0-dev libgtk-3-dev libgcr-3-dev libwebkit2gtk-4.0-dev firefox-esr -y
sudo apt install python3 python3-pip lsd bat neovim bpytop mpv cmus audacious geany meld libreoffice libreoffice-gtk3 claws-mail abiword gnumeric emacs gimp stellarium transmission-gtk evince keepassxc inkscape darktable krita kdenlive qt5-style-kvantum qt5ct qt6ct filezilla qimgv blueman flatpak thunar thunar-volman thunar-archive-plugin acpi numlockx playerctl scrot sysstat feh galculator file-roller gvfs jq x11-utils tumbler vlc ttf-mscorefonts-installer chromium cherrytree xournal tree redshift synaptic conky-all cups gvfs-backends lm-sensors alacritty kitty fish mugshot fontforge greybird-gtk-theme elementary-icon-theme fonts-crosextra-carlito fonts-crosextra-caladea fonts-powerline fonts-font-awesome fonts-ubuntu fonts-ubuntu-console fonts-liberation fonts-liberation2 fonts-terminus -y
sudo apt install multitail tree zoxide trash-cli fzf bash-completion ffmpeg default-jdk git wget nano vim htop locate p7zip p7zip-full unzip dos2unix net-tools ethtool bind9-utils curl wget wireshark -y
sudo apt install network-manager-gnome lightdm-gtk-greeter-settings celluloid strawberry timeshift gdebi gparted gufw thunderbird handbrake audacity hexchat -y
sudo apt install ninja-build gettext cmake unzip curl -y
sudo apt install libavcodec-extra gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly -y
sudo apt install build-essential meson ninja-build pkg-config libssl-dev libsystemd-dev libjpeg-dev libglib2.0-dev libgstreamer1.0-dev liblua5.2-dev libfreetype6-dev libfontconfig1-dev libfribidi-dev libavahi-client-dev libharfbuzz-dev libibus-1.0-dev libx11-dev libxext-dev libxrender-dev libgl1-mesa-dev libopenjp2-7-dev libwebp-dev libgif-dev libtiff5-dev libpoppler-dev libpoppler-cpp-dev libspectre-dev libraw-dev librsvg2-dev libudev-dev libmount-dev libdbus-1-dev libpulse-dev libsndfile1-dev libxcursor-dev libxcomposite-dev libxinerama-dev libxrandr-dev libxtst-dev libxss-dev libgstreamer-plugins-base1.0-dev doxygen libscim-dev libxdamage-dev libwebp-dev libunwind-dev libheif-dev libluajit-5.1-dev libinput-dev check libpam-dev libexif-dev -y
sudo apt install qemu-system libvirt-daemon-system virt-manager -y
sudo apt install task-desktop task-xfce-desktop -y
sudo apt install xfce4 xfce4-goodies catfish -y
sudo apt install xfce4* xfce4-panel-profiles orage -y
sudo apt install libspa-0.2-bluetooth wireplumber pipewire-media-session- -y
sudo apt install pipewire-pulse pipewire-jack pipewire-alsa -y
sudo apt autoremove -y
sudo apt autoclean -y 
sudo apt autopurge -y
sudo unlink /usr/bin/gnome-terminal
sudo rm -rf /usr/share/xsessions/dwm.desktop 
systemctl --user --now enable wireplumber.service 

# Remove / Install configuration files
rm -rf ~/.config/rofi
rm -rf ~/.config/dunst
rm -rf ~/.config/picom.conf
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/gtk-2.0
rm -rf ~/.config/kitty
rm -rf ~/.config/alacritty
rm -rf ~/github/dwm-thanos
rm -rf ~/github/dmenu-thanos
rm -rf ~/github/st-thanos
cd ~/github/debian-dwm-thanos/
cp -R gtk-3.0 ~/.config/
cp -R gtk-2.0 ~/.config/
cp picom.conf ~/.config/
cp -R alacritty ~/.config/
cp -R kitty ~/.config/
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
rm -rf ~/.fonts/.git
cd ~

# Install Nordic theme
cd /usr/share/themes
sudo git clone https://github.com/EliverLara/Nordic.git
cd ~
cd ~/Downloads
git clone https://github.com/alvatip/Nordzy-icon.git
cd Nordzy-icon/
sudo ./install.sh
cd ~/Downloads
git clone https://github.com/guillaumeboehm/Nordzy-cursors.git
cd Nordzy-cursors/
sudo ./install.sh

# Install Nord-backgrounds
cd ~/Pictures
rm -rf ~/Pictures/backgrounds
git clone https://github.com/thanantonop/nord-backgrounds.git
mv nord-backgrounds backgrounds
rm -rf ~/Pictures/backgrounds/.git
cd ~
echo Done

# Post Installation Actions
#Open Terminal Here - XFCE Terminal for right click on thunar
#exo-open --working-directory %f --launch TerminalEmulator

#XFCE panel - Bottom - 32Pixel panel - 22Pixel icons - Whisker Menu, Keyboard layout

#Place Carlito 12 the default font everywhere
#Place Carlito font also to Firefox-ESR




