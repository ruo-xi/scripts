cd ~/Software/source
git clone https://aur.archlinux.org/yay.git
cd yay
export GOPROXY=https://goproxy.io,direct
makepkg -si
cd ~
