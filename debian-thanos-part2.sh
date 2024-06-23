cd ~
cp ~/.bashrc.bak ~/.bashrc.orig
sudo apt install firmware-iwlwifi -y
sudo apt install lightdm x11-xserver-utils pulseaudio xorg xcb libx11-xcb-dev libxcb-res0-dev arandr network-manager alsa-utils dmenu zoxide trash-cli ufw libglib2.0-dev libgtk-3-dev libgcr-3-dev libwebkit2gtk-4.0-dev firefox-esr -y
mkdir ~/github
cd ~/github
git clone https://github.com/thanantonop/dwm-thanos.git
git clone https://github.com/thanantonop/st-thanos.git
git clone https://github.com/thanantonop/dmenu-thanos.git
cd dwm-thanos
sudo make clean install
cd ..
cd st-thanos
sudo make clean install
cd ..
cd dmenu-thanos
sudo make clean install
cd ..
cd ~
sudo cp dwm.desktop /usr/share/xsessions/
sudo ufw enable
sudo apt install python3 python3-pip lsd dunst xbacklight stterm mpv cmus audacious geany meld libreoffice libreoffice-gtk3 abiword emacs gimp stellarium transmission-gtk evince keepassxc inkscape darktable krita filezilla qimgv blueman lxappearance flatpak thunar thunar-volman thunar-archive-plugin dmenu acpi numlockx playerctl scrot sysstat xbindkeys feh galculator file-roller gvfs jq x11-utils tumbler vlc ttf-mscorefonts-installer chromium cherrytree xournal tree redshift synaptic l3afpad conky-all cups gvfs-backends lm-sensors fonts-powerline fonts-font-awesome fonts-ubuntu fonts-ubuntu-console fonts-liberation fonts-liberation2 fonts-terminus -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
cd ~
sudo apt-get install ninja-build gettext cmake unzip curl -y
echo "options snd_hda_intel power_save=0" | sudo tee -a /etc/modprobe.d/audio_disable_powersave.conf
cd ~
mkdir Downloads
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip
unzip FiraCode.zip -d ~/.fonts
unzip Meslo.zip -d ~/.fonts
cd ~
sudo ln -s /usr/local/bin/st /usr/bin/gnome-terminal
cd ~
