# c_dir='~/.config'
# m_c_dir='~/Github/config'


# nvidia 
sh ./nvidia.sh
sh ./wayland.sh

yay -S sway swaybg

yay -S waybar 
mkdir ~/.config/waybar
ln -s ~/Github/config/waybar-sway/* ~/.config/waybar/

yay -S swaylock
yay -S swayidle

# mkdir ~/.config/sway
# ln -s ~/Github/config/sway/* ~/.config/sway/
# yay -S sway 

