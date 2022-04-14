sh ./nvidia.sh
sh ./wayland.sh
yay -S wayfire

yay -S wlroots wf-config 
yay -S meson cmake glm
git clone git@github.com:WayfireWM/wayfire.git ~/Software/source/
cd ~/Software/source/wayfire
/bin/meson build

# yay -S swayfire-git


# wall paper 
# yay -S wf-shell
# ln -s ~/Github/config/wayfire/wayfire.ini ~/.config/
