ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

timedatectl set-ntp true 
timedatectl set-local-rtc true # 是archlinux 使用CST时间 避免因为使用UTC与windows 冲突
hwclock --systohc

pacman -S neovim ntfs-3g os-prober grub efibootmgr dhcpcd man man-db man-pages git 

# network wireless
# pacman -S wpa_supplicant networkmanager n

sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
# sed -i 's/#zh_CN.UTF-8 UTF-8/zh-CN.UTF_8 UTF-8/g' /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf

echo yu > /etc/hostname
echo '127.0.0.1 localhost
::1 localhost
127.0.1.1 yu.localdomain yu' >> /etc/hosts

passwd << EOF
cao19981128
cao19981128
EOF

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m -G wheel yu
passwd yu << EOF
cao19981128
cao19981128
EOF

sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers

sudo systemctl enable dhcpcd.service

passwd -d yu

dd if=/dev/zero of=/mnt/swapfile bs=1M count=16384 status=progress
chmod 600 /mnt/swapfile
mkswap /mnt/swapfile
swapon /mnt/swapfile
