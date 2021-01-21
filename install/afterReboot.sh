cd ~
mkdir software
mkdir software/source

git clone https://github.com/ruo-xi/.config.git
# config git
sudo -S pacman -S openssh
sudo ln -sf ~/.config.ssh ~/.ssh
sudo chmod 400 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub

sh /scripts/install/software/go.sh
sh /scripts/install/software/yay.sh

# python
yay -S python2 python2-pip python python-pip
# nodejs
yay -S nodejs npm

# java
yay -S jdk11-openjdk

yay -S nvidia xorg chromium v2raya xorg-xinit picom

sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
sed -i '/xterm/d' ~/.xinitrc
sed -i '/xclock/d' ~/.xinitrc
sed -i '/twm/d' ~/.xinitrc
echo 'chromium' >> ~/.xinitrc
startx

# expory proxy
export https_proxy="127.0.0.1:8888"
export http_proxy="127.0.0.1:8888"

# fonts
yay -S nerd-fonts-source-code-pro wqy-zenhei ttf-symbola
# git config
sh /scripts/install/software/git.sh

# pictures
mkdir ~/store
git clone git@github.com:ruo-xi/picture ~/store/
# windows manager and terminal 
# sh /scripts/install/software/suckless.sh
# file manager 
sh /scripts/install/software/ranger.sh
# text editor
sh /scripts/install/software/neovim.sh
# shell
sh /scripts/install/software/zsh.sh
# fuzzy finder
sh /scripts/install/software/fzf.sh
# file finder
yay -S fd
# text line finder
yay -S ripgrep 
# output to screen from input
yay -S ccat 
# audio tools
# yay -S alsa-utils 
# app launcher
# yay -S rofi
# audio 
# yay -S pulseaudio pulseaudio-alsa


# yay -S fcitx5 fcitx5-gtk  fcitx5-qt fcitx5-chinene-addons fcitx5-config-qt 
# ln -s ~/.config/fcitx5/pam_environment ~/.pam_environment 

sed -i '/chromium/d' ~/xinitrc
git clone git@github.com:ruo-xi/scripts.git
