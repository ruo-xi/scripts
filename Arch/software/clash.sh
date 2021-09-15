yay -S clash
yay -S clashup
ln -sf ~/Github/config/clash ~/.config
systemctl --user enable --now  clash.service
