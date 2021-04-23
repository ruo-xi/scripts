sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
sudo timedatectl set-ntp true
yay -S v2raya google-chrome
echo 'google-chrome-stable' >> ~/.xinitrc
startx
sed -i '/google-chrome-stable/d' ~/.xinitrc
