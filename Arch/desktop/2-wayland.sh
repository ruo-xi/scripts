sudo pacman -S wayland wl-clipboard 

# QT support

# echo 'WLR_NO_HARDWARE_CURSORS=1
# _JAVA_AWT_WM_NONREPARENTING=1' | tee -a ~/.pam_environment

# echo 'SDL_VIDEODRIVER=wayland' | tee -a ~/.pam_environment

# sudo pacman -S wl-clipboard

# QT
# QT minimize to tray
sudo pacman -S qt5ct
# echo 'QT_QPA_PLATFORMTHEME=qt5ct' | tee -a ~/.pam_environment
yay -S qt5-wayland qt6-wayland
# echo 'QT_QPA_PLATFORM="wayland;xcb"' | tee -a ~/.pam_environment

#electron
# echo '--enable-features=WaylandWindowDecorations
# --ozone-platform-hint=auto' | tee -a ~/.config/electron-flags.conf
