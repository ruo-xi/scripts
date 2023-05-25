sudo pacman -S brave-bin
paru -S libva-vdpau-driver-chromium
sudo sed -i 's/Exec.*/& --enable-features=UseOzonePlatform --ozone-platform=wayland/'  /usr/share/applications/brave-browser.desktop
