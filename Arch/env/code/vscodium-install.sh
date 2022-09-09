sudo pacman -S vscodium
sudo sed -i 's/Exec.*/& --enable-features=UseOzonePlatform --ozone-platform=wayland/'  /usr/share/applications/vscodium.desktop
