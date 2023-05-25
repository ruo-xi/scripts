sudo pacman -S clash

# vi .config/clash/clashup.json
# yay -S clashup
# pip install pyyaml
mkdir ~/.config/clash
ln -sf ~/Github/config/clash/* ~/.config/clash/
wget -c 'https://kuutamoinen.xyz/link/iTKix2DQnNq6VeAn?clash=1' -O ~/.config/clash/config.yaml
systemctl --user enable clash.service
# run clash  manual
# clashup --pre
