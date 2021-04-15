sh ./git.sh 

sudo pacman-mirrors -i -c China -m rank
sudo pacman -S yay

# timedatectl set-local-rtc true

sh go.sh
yay -S nodejs npm
yay -S python2 python2-pip
yay -S python-pip python-pynvim
yay -S v2raya

yay -S alacritty
yay -Rns palemoon-bin
yay -S google-chrome

# terminal
yay -S alacritty
sudo ln -sf ~/Github/config/alacritty ~/.config/alacritty
sudo rm -rf /bin/terminal /bin/i3-sensible-terminal

# wm
rm -rf ~/.i3
sudo ln -sf ~/Github/config/i3 ~/.config/i3
yay -Rns manjaro-i3-settings


# picom
sudo ln -sf ~/Github/config/picom ~/.config/picom
rm -rf ~/.config/picom.conf

rm -rf ~/.config/ranger
sudo ln -sf ~/Github/config/ranger ~/.config/ranger

# yay -S v2ray-desktop
# yay -S qv2ray
# config qv2ray rm v2ray-desktop
# port 8888 


# need proxy
sh ./zsh.sg
# zsh > exit > zsh > zimfw install

# need proxy
yay -Rns nano
sh ./nvim.sh
# nvim > unproxy > nvim

# yay -S xorg-xev
# setxkbmap -option caps:escape

# yay -S nvidia

yay -S typora

sudo ln -sf 
yay -S rofi ~/Github/config/rofi ~/.config/rofi

yay -S fd
yay -S ripgrep
