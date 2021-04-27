# wm
sudo ln -sf ~/Github/config/i3 ~/.config/i3
sudo ln -sf ~/Github/config/i3status ~/.config/i3status
yay -S i3-gaps i3exit i3status
echo  'i3' >> ~/.xinitrc
yay -S xautolock 
# volumeicon 

# picom
yay -S picom
sudo ln -sf ~/Github/config/picom ~/.config/picom

# terminal
yay -S alacritty
sudo ln -sf ~/Github/config/alacritty ~/.config/alacritty

# wallpaper management
yay -S feh

# application runner
yay -S rofi ~/Github/config/rofi ~/.config/rofi
yay -S rofi

# num lcok
yay -S numlockx


# to set keymap  you can use xmodmap -pke to see the keycode map
