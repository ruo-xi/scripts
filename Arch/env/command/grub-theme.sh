sudo mkdir /boot/grub/themes/arch
export https_proxy="127.0.0.1:7890"
export http_proxy="127.0.0.1:7890"
wget -c https://github.com/AdisonCavani/distro-grub-themes/raw/master/themes/arch.tar -O - | sudo tar -x -C /boot/grub/themes/arch
sudo sed -i 's/GRUB_GFXMODE=auto/GRUB_GFXMODE=1920x1200/g' /etc/default/grub
sudo sed -i 's+#GRUB_THEME="/path/to/gfxtheme"+GRUB_THEME=/boot/grub/themes/arch/theme.txt+g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
