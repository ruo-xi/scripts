echo 'WLR_NO_HARDWARE_CURSORS=1
_JAVA_AWT_WM_NONREPARENTING=1
SDL_VIDEODRIVER=wayland' | tee -a ~/.pam_environment

sudo pacman -S wl-clipboard

# QT
# paru -S qt5-wayland qt6-wayland
# echo 'QT_QPA_PLATFORM="wayland;xcb"' | tee -a ~/.pam_environment
