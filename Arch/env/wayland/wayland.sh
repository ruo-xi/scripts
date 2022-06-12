echo 'MOZ_ENABLE_WAYLAND=1
WLR_NO_HARDWARE_CURSORS=1
_JAVA_AWT_WM_NONREPARENTING=1' | tee -a ~/.pam_environment

# support neovim
yay -S wl-clipboard

# suppory eletron application for per user
echo '--enable-features=UseOzonePlatform
--ozone-platform=wayland' | tee -a ~/.config/electron-flags.conf

# QT
yay -S qt5-wayland qt6-wayland
# echo 'QT_QPA_PLATFORM="wayland;xcb"' | tee -a ~/.pam_environment
