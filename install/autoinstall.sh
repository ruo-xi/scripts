ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
timedatectl set-local-rtc true # 是archlinux 使用CST时间 避免因为使用UTC与windows 冲突

pacman -S wpa_supplicant networkmanager ntfs-3g os-prober grub efibootmgr dhcpcd man man-db git

sed -i 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
sed -i 's/#zh_CN.UTF-8 UTF-8/zh-CN.UTF_8 UTF-8/g' /etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' /etc/locale.conf

echo yu /etc/hostname
echo '127.0.0.1 yu
127.0.0.1 yu
127.0.0.0 yu' >> hostname

passwd

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
grub-mkconfig -o /boot/grub/grub.cfg

useradd -m -G wheel yu
passwd yu
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers


