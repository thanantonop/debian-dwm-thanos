sudo apt update -y
sudo apt install packaging-dev build-essential automake autoconf git vim ranger htop nmap neofetch sudo efibootmgr -y
sudo apt install lightdm x11-xserver-utils pulseaudio xorg xcb libx11-xcb-dev libxcb-res0-dev libimlib2-dev arandr network-manager alsa-utils dmenu zoxide trash-cli ufw libglib2.0-dev libgtk-3-dev libgcr-3-dev libwebkit2gtk-4.0-dev firefox-esr -y
cd ~
git clone https://github.com/ChrisTitusTech/debian-titus
cd debian-titus
sudo ./install.sh
cd ~
