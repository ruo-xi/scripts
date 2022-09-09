echo '[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch' | sudo tee -a /etc/pacman.conf
sudo pacman -Sy
sudo pacman -S archlinuxcn-keyring
