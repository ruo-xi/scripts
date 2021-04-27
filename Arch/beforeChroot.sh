# setfont /usr/share/kbd/consolefonts/
# loadkeys
# nvim keys.conf

mkfs.ext4 /dev/nvme1n1p2

# timedatectl set-ntp true
# timedatectl status
# fdisk 
# efi mkfs.vfat -F32 

mount /dev/nvme1n1p2 /mnt
mkdir /mnt/boot
mount /dev/nvme1n1p1 /mnt/boot
mkdir /mnt/data
mount /dev/nvme0n1p2 /mnt/data

sed -i '1i\ Server = https://mirrors.aliyun.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
sed -i '1a\ Server = https://mirrors.urbanwave.co.za/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel linux linux-firmware 

genfstab -L /mnt >> /mnt/etc/fstab

cp -r  /root/scripts /mnt/scripts

arch-chroot /mnt

# dd if=/mne/dev/zero of=/mnt/swapfile bs=1M count=16384 status=progress
# chmod 600 /swapfile
# mkswap /swapfile
# swapon /swapfile

