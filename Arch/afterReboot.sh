cp -r /scripts ~/scripts
sudo rm -rf /scripts

# make dir
sh /scripts/Arch/software/dir.sh

# git 
# need openssh 
sh /scripts/Arch/software/git.sh

sh /scripts/Arch/software/go.sh
sh /scripts/Arch/software/yay.sh
sh /scripts/Arch/software/dev.sh

yay -S nvidia xorg-server xorg-xinit google-chrome 
yay -S v2raya 
# yay -S qv2ray

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '/xterm/d' ~/.xinitrc
sed -i '/xclock/d' ~/.xinitrc
sed -i '/twm/d' ~/.xinitrc
echo 'google-chrome-stable' >> ~/.xinitrc
startx
sed -i '/google-chrome-stable/d' ~/xinitrc

# expory proxy
export https_proxy="127.0.0.1:8888"
export http_proxy="127.0.0.1:8888"

# shell
sh /scripts/Arch/software/zsh.sh

# neovim
sh /scripts/Arch/software/neovim.sh

# fonts
sh /scripts/Arch/software/fonts.sh

# windows manager and terminal 
# sh /scripts/install/software/suckless.sh
sh /scripts/Arch/software/wm.sh

# file manager 
sh /scripts/Arch/software/ranger.sh

# tools
yay -S fd ripgrep ccat 


# audio tools
sh /scripts/Arch/software/audio.sh
