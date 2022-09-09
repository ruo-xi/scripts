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
mount /dev/nvme0n1p1 /mnt/data

# mkdir /mnt/win 
# mount /dev/nvme0n1p1 /mnt/win

sed -i '1i\ Server = https://mirrors.aliyun.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
sed -i '1a\ Server = https://mirrors.urbanwave.co.za/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist
sed -i '1i\ Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist

pacman -Sy archlinux-keyring

pacstrap /mnt base base-devel linux linux-firmware 

# cp -r  /root/scripts /mnt/scripts

arch-chroot /mnt

genfstab -L /mnt >> /mnt/etc/fstab

