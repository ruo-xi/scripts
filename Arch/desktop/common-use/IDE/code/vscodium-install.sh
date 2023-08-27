sudo pacman -S code
sudo sed -i 's/Exec.*/& --enable-features=UseOzonePlatform --ozone-platform=wayland/'  /usr/share/applications/code-oss.desktop
sudo sed -i 's/Exec.*/& --enable-features=UseOzonePlatform --ozone-platform=wayland/'  /usr/share/applications/code-oss-url-handler.desktop
