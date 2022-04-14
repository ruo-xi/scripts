yay -S nvidia xorg-server xorg-xinit  
sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '/xterm/d' ~/.xinitrc
sed -i '/xclock/d' ~/.xinitrc
sed -i '/twm/d' ~/.xinitrc


# wm
sudo ln -sf ~/Github/config/i3/* ~/.config/i3
sudo ln -sf ~/Github/config/i3status ~/.config/i3status
yay -S i3-gaps i3exit i3status

echo  'i3' >> ~/.xinitrc

# lock 
yay -S xautolock 

# volumeicon 

# picom
sh ./picom.sh

# terminal
sh ./alacritty.sh

# wallpaper management
yay -S feh

# application runner
sh ./rofi.sh

# num lcok
yay -S numlockx

# x profile 
# ln -sf ~/Github/config/xprofile/xprofile ~/.xprofile

# to set keymap  you can use xmodmap -pke to see the keycode map
