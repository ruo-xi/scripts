sudo pacman -S flameshot xdg-desktop-portal xdg-desktop-portal-wlr grim 
sudo pacman -S obs-studio

echo 'XDG_CURRENT_DESKTOP=sway' | tee -a ~/.pam_environment
