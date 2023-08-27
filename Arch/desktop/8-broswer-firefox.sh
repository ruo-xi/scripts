# sudo pacman -S firefox
sudo pacman -S firefox-developer-edition

echo '
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi' | tee -a ~/.bashrc

# echo 'MOZ_ENABLE_WAYLAND=1' | tee -a ~/.pam_environment

# about:config
# gfx.webrender.all
# media.ffmpeg.vaapi.enabled



# gfx.webrender.compositor.force-enabled 
