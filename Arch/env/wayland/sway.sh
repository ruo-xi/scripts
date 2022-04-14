# c_dir='~/.config'
# m_c_dir='~/Github/config'


# nvidia 
sh ./nvidia.sh
sh ./wayland.sh

yay -S waybar
mkdir ~/.config/waybar
ln -s ~/Github/config/waybar/* ~/.config/waybar/

yay -S swaylock-effects
yay -S swayidle

# mkdir ~/.config/sway
# ln -s ~/Github/config/sway/* ~/.config/sway/
# yay -S sway 

