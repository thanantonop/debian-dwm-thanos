# Remove dwm st and dmenu
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

sudo apt purge dwm stterm dmenu rofi arandr dunst i3lock arc-theme papirus-icon-theme xbacklight lxappearance xbindkeys -y
sudo apt install packaging-dev build-essential automake autoconf git vim ranger htop nmap neofetch sudo efibootmgr -y
sudo apt install firmware-iwlwifi -y
sudo apt install lightdm x11-xserver-utils pulseaudio xorg xcb libx11-xcb-dev libxcb-res0-dev libimlib2-dev network-manager alsa-utils zoxide trash-cli ufw libglib2.0-dev libgtk-3-dev libgcr-3-dev libwebkit2gtk-4.0-dev firefox-esr -y
sudo apt install python3 python3-pip lsd bat neovim bpytop mpv cmus audacious geany meld libreoffice libreoffice-gtk3 claws-mail abiword gnumeric emacs gimp stellarium transmission-gtk evince keepassxc inkscape darktable krita filezilla qimgv blueman flatpak thunar thunar-volman thunar-archive-plugin acpi numlockx playerctl scrot sysstat feh galculator file-roller gvfs jq x11-utils tumbler vlc ttf-mscorefonts-installer chromium cherrytree xournal tree redshift synaptic conky-all cups gvfs-backends lm-sensors alacritty kitty fish mugshot fontforge fonts-crosextra-carlito fonts-crosextra-caladea fonts-powerline fonts-font-awesome fonts-ubuntu fonts-ubuntu-console fonts-liberation fonts-liberation2 fonts-terminus -y
sudo apt install multitail tree zoxide trash-cli fzf bash-completion -y
sudo apt install network-manager-gnome lightdm-gtk-greeter-settings celluloid strawberry timeshift gdebi gparted gufw thunderbird handbrake audacity hexchat -y
sudo apt install qemu-system libvirt-daemon-system virt-manager -y
sudo apt install task-desktop task-xfce-desktop -y
sudo apt install xfce4 xfce4-goodies catfish -y
sudo apt autoremove -y
sudo apt autoclean -y 
sudo apt autopurge -y
sudo unlink /usr/bin/gnome-terminal
sudo rm -rf /usr/share/xsessions/dwm.desktop 
rm -rf ~/.config/rofi
rm -rf ~/.config/dunst
rm -rf ~/.config/picom.conf
rm -rf ~/.config/gtk-3.0/settings.ini
rm -rf ~/.config/gtk-2.0/gtkrc-2.0 
rm -rf ~/.config/kitty/kitty.conf 
rm -rf ~/.config/kitty/theme.conf
rm -rf ~/github/dwm-thanos
rm -rf ~/github/dmenu-thanos
rm -rf ~/github/st-thanos
cd ~/github/debian-dwm-thanos/
cp settings.ini ~/.config/gtk-3.0/
cp gtkrc-2.0 ~/.config/gtk-2.0/
cp picom.conf ~/.config/
cp -R alacritty ~/.config/
cp kitty.conf ~/.config/kitty/
cp theme.conf ~/.config/kitty/
cp nord.conf ~/.config/kitty/
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


#Open Terminal Here
#exo-open --working-directory %f --launch TerminalEmulator





