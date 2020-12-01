mkdir software
mkdir software/source

git clone https://github.com/ruo-xi/.config.git
# config git
echo cao19981128 | sudo -S pacman -S openssh << EOF
y
EOF
sh /scripts/install/software/git.sh

sh /scripts/install/software/go.sh
sh /scripts/install/software/yay.sh

# python
echo y | yay -S python2 
echo y | yay -S python2-pip
echo y | yay -S python
echo y | yay -S pyhton-pip
# nodejs
echo y | yay -S nodejs 
echo y | yay -S npm

# java
echo y | yay -S jdk11-openjdk

echo y | yay -S nvidia 
echo y | yay -S xorg 
echo y | yay -S chromium 
echo y | yay -S v2ray 
echo y | yay -S xorg-xinit 
echo y | yay -S picom

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
echo y | yay -S nerd-fonts-source-code-pro wqy-zenhei ttf-sybola
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
echo y | yay -S fd
# text line finder
echo y | yay -S ripgrep 
# output to screen from input
echo y | yay -S ccat 
# audio tools
echo y | yay -S alsa-utils 

sed -i '/chromium/d' ~/xinitrc

git clone git@github.com:ruo-xi/scripts.git
