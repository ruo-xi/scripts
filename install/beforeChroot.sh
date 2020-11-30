mkfs.xfs -f /dev/nvme1n1p5

# timedatectl set-ntp true
# timedatectl status

mount /dev/nvme1n1p5 /mnt
mkdir /mnt/boot
mount /dev/nvme1n1p1 /mnt/boot

pacstrap /mnt base base-devel linux linux-firmware 

swapon /dev/nvme1n1p4

genfstab -L /mnt >> /mnt/etc/fstab

cp -r  ~/scripts /mnt/scripts

arch-chroot /mnt

