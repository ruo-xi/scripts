cd ~
mkdir software
mkdir software/source

git clone https://github.com/ruo-xi/.config.git
# config git
sudo -S pacman -S openssh


sh /scripts/install/software/go.sh
sh /scripts/install/software/yay.sh

# python
yay -S python2 python2-pip python pyhton-pip
# nodejs
yay -S nodejs npm

# java
yay -S jdk11-openjdk

yay -S nvidia xorg chromium x2raya xorg-xinit picom

sudo mv /etc/X11/xinit/xinitrc ~/xinitrc
sed -i '/xterm/d' ~/.xinitrc
sed -i '/xclock/d' ~/.xinitrc
sed -i '/twm/d' ~/.xinitrc
echo 'chromium' >> ~/.xinitrc
startx

# expory proxy
export https_proxy="127.0.0.1:8888"
export http_proxy="127.0.0.1:8888"

# fonts
yay -S nerd-fonts-source-code-pro wqy-zenhei ttf-sybola
# git config
sh /scripts/install/software/git.sh

# pictures
mkdir ~/store
git clone git@github.com:ruo-xi/picture
# windows manager and terminal 
sh /scripts/install/software/suckless.sh
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
yay -S alsa-utils 

sed -i '/chromium/d' ~/xinitrc

git clone git@github.com:ruo-xi/scripts.git
