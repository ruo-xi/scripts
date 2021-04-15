sh ./git.sh 

sudo pacman-mirrors -i -c China -m rank
sudo pacman -S yay

sudo ln -sf ~/Github/config/ranger ~/.config/ranger

# timedatectl set-local-rtc true

# wm
rm -rf ~/.i3
sudo ln -sf ~/Github/config/i3 ~/.config/i3

# terminal
sudo ln -sf ~/Github/config/alacritty ~/.config/alacritty
yay -S alacritty
sudo rm -rf /bin/terminal /bin/i3-sensible-terminal

# picom
sudo ln -sf ~/Github/config/picom ~/.config/picom
rm -rf ~/.config/picom.conf

sh go.sh
yay -S nodejs npm
yay -S python2
yay -S python2-pip

# yay -S v2raya
yay -S v2ray-desktop
yay -S qv2ray
# config qv2ray rm v2ray-desktop
# port 8888 

yay -Rns palemoon-bin
yay -S google-chrome

# need proxy
sh ./zsh.sg
# zsh > exit > zsh > zimfw install

# need proxy
sh ./nvim.sh
# nvim > unproxy > nvim

# yay -S xorg-xev
# setxkbmap -option caps:escape

# yay -S nvidia

yay -S typora
yay -S rofi
yay -S fd
yay -S ripgrep
