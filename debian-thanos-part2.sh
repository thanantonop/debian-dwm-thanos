cd ~
cp ~/.bashrc.bak ~/.bashrc.orig
sudo apt install lightdm x11-xserver-utils pulseaudio xorg xcb libx11-xcb-dev libxcb-res0-dev arandr network-manager alsa-utils dmenu zoxide trash-cli ufw libglib2.0-dev libgtk-3-dev libgcr-3-dev libwebkit2gtk-4.0-dev firefox-esr -y
mkdir ~/github
cd ~/github
git clone https://github.com/thanantonop/dwm-thanos.git
git clone https://github.com/thanantonop/st-thanos.git
git clone https://github.com/thanantonop/surf-thanos.git
git clone https://github.com/neovim/neovim.git
cd dwm-thanos
sudo make clean install
cd ..
cd st-thanos
sudo make clean install
cd ..
cd surf-thanos
sudo make clean install
cd ..
mv neovim neovim_stable
cd ~
sudo cp dwm.desktop /usr/share/xsessions/
sudo ufw enable
sudo apt install lsd dunst xbacklight stterm mpv cmus audacious geany meld libreoffice libreoffice-gtk3 abiword gimp keepassxc darktable qimgv blueman lxappearance flatpak thunar thunar-volman thunar-archive-plugin dmenu acpi numlockx playerctl scrot sysstat xbindkeys feh galculator file-roller gvfs jq x11-utils tumbler vlc ttf-mscorefonts-installer arc-theme -y
cd ~
cd ~/github/neovim_stable
git checkout stable
sudo apt-get install ninja-build gettext cmake unzip curl -y
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ~
echo "options snd_hda_intel power_save=0" | sudo tee -a /etc/modprobe.d/audio_disable_powersave.conf
cd ~
mkdir Downloads
cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Meslo.zip
unzip FiraCode.zip -d /home/thanos/.fonts
unzip Meslo.zip -d /home/thanos/.fonts
git clone https://github.com/alvatip/Nordzy-icon.git
cd ~/Downloads/Nordzy-icon/
./install.sh
cd ~
git clone https://github.com/ChrisTitusTech/neovim.git
cd ~/neovim/
./setup.sh
cd ~
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update -y
sudo apt install brave-browser -y
cd ~
