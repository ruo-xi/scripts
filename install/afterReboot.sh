cd ~
mkdir software
mkdir software/source

sh software/go.sh
sh software/yay.sh

git clone git@github.com:ruo-xi/.config.git

sh software/zsh.sh
sh software/fzf.sh
sh software/ranger.sh
sh software/neovim.sh
sh software/git.sh
yay -S fd
yay -S ripgrep

# sudo pacman -S xf86-video-intel
sudo pacman -S nvidia
sudo pacman -S xorg


