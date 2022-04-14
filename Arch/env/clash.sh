yay -S clash

# vi .config/clash/clashup.json
yay -S clashup
pip install pyyaml
mkdir ~/.config/clash
ln -sf ~/Github/config/clash/* ~/.config/clash/
systemctl --user enable clash.service
# run clash  manual
# clashup --pre
