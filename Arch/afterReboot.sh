cp -r /scripts ~/scripts
sudo rm -rf /scripts

# make dir
sh ./software/dir.sh

# git 
# need openssh 
sh ./software/git.sh

sh ./software/go.sh
sh ./software/yay.sh
sh ./software/dev.sh

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
sh ./software/zsh.sh

# neovim
sh ./software/neovim.sh

# fonts
sh ./software/fonts.sh

# windows manager and terminal 
# sh /scripts/install/software/suckless.sh
sh ./software/wm.sh

# file manager 
sh ./software/ranger.sh

# tools
yay -S fd ripgrep ccat 


# audio tools
sh ./software/audio.sh
