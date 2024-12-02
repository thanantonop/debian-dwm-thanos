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

sudo apt purge dwm stterm dmenu rofi arandr dunst i3lock arc-theme papirus-icon-theme -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt autopurge -y
sudo unlink /usr/bin/gnome-terminal
sudo rm -rf /usr/share/xsessions/dwm.desktop 
rm -rf ~/.config/rofi
rm -rf ~/.config/dunst
rm -rf ~/github/dwm-thanos
rm -rf ~/github/dmenu-thanos
rm -rf ~/github/st-thanos

#Open Terminal Here
#exo-open --working-directory %f --launch TerminalEmulator



