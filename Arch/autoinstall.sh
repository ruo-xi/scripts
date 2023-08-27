ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# timedatectl set-ntp true 
# timedatectl set-local-rtc true # 是archlinux 使用CST时间 避免因为使用UTC与windows 冲突
hwclock --systohc

sed -i '1i\ Server = https://mirrors.aliyun.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
sed -i '1a\ Server = https://mirrors.urbanwave.co.za/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
sed -i '1i\ Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist

pacman -S neovim dhcpcd man man-db man-pages git networkmanager 
#pacman -S ntfs-3g  
pacman -S grub efibootmgr os-prober
pacman -S wget
pacman -S amd-ucode

systemctl enable --now NetworkManager.service
sudo systemctl enable dhcpcd.service

# network wireless
# pacman -S wpa_supplicant  n

sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
# sed -i 's/#zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen

locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf
# echo 'LANG=zh_CN.UTF-8' > /etc/locale.conf


echo yu > /etc/hostname
echo '127.0.0.1 localhost
::1 localhost
127.0.1.1 yu.localdomain yu' >> /etc/hosts

passwd << EOF
cao19981128
cao19981128
EOF

sed -i 's/GRUB_DEFAULT=0/GRUB_DEFAULT=saved/g' /etc/default/grub
sed -i 's/#GRUB_SAVEDEFAULT=true/GRUB_SAVEDEFAULT=true/g' /etc/default/grub
sed -i -e '1a\GRUB_DISABLE_OS_PROBER=false' /etc/default/grub
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m -G wheel yu

passwd yu << EOF
cao19981128
cao19981128
EOF

# echo 'keycode 58 = Escape' | tee -a /etc/.keystring
# echo 'KEYMAP=/etc/.keystrings'|sudo tee -a /etc/vconsole.conf
# sudo loadkeys ~/.keystrings

sed -i 's/# %wheel ALL/%wheel ALL/g' /etc/sudoers

passwd -d yu

dd if=/dev/zero of=/mnt/swapfile bs=1M count=16384 status=progress
chmod 600 /mnt/swapfile
mkswap /mnt/swapfile
swapon /mnt/swapfile
