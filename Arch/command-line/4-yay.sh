dir=~/Software/source

if [ ! -d $dir ]; then 
  mkdir -p $dir
fi

git clone https://aur.archlinux.org/yay.git ~/Software/source/yay

cd ~/Software/source/yay
export GOPROXY=https://goproxy.cn
makepkg -si


