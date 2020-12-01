cd ~
mkdir software
mkdir software/source

git clone https://github.com/ruo-xi/.config.git
# config git
sh /scripts/install/software/git.sh

sh /scripts/install/software/go.sh
sh /scripts/install/software/yay.sh

# python
yay -S python2
yay -S ptthon
yay -S python2-pip
yay -S python-pip

# nodejs
yay -S nodejs
yay -S npm

# java
yay -S jdk11-openjdk

yay -S nvidia
yay -S xorg
yay -S chromium
yay -S v2raya
yay -S xorg-xinit
yay -S picom

sudo mv /etc/X11/xinit/xinitrc ~/xinitrc
sed -i '/xterm/d' ~/.xinitrc
sed -i '/xclock/d' ~/.xinitrc
sed -i '/twm/d' ~/.xinitrc
echo 'chromium' >> ~/.xinitrc
startx
	
# fonts
yay -S nerd-fonts-source-code-pro
yay -S wqy-zenhei
yay -S ttf-sybola

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

