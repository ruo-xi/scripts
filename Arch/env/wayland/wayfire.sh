sh ./nvidia.sh
sh ./wayland.sh

# yay -S wcm

yay -S wayfire 
# background
yay -S wf-shell 

# panel
yay -S waybar
mkdir ~/.config/waybar
ln -s ~/Github/config/waybar-wayfire/* ~/.config/waybar/

# Screen color temperature
yay -S wlsunset

# Notifications
yay -S mako

# auto config ouputs
yay -S kanshi

# idle
yay -S swayidle swaylock before-sleep

# logout
yay -S wlogout

# mkdir ~/.config/wayfire
ln -s ~/Github/config/wayfire/* ~/.config/

# yay -S wlroots wf-config 
# yay -S meson cmake glm
# git clone git@github.com:WayfireWM/wayfire.git ~/Software/source/
# cd ~/Software/source/wayfire
# /bin/meson build

# yay -S swayfire-git


# wall paper 
# yay -S wf-shell
