mkfs.xfs /dev/nvme1n1p5

timedatectl set-ntp true
timedatectl status

mount /dev/nvme1n1p5 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

pacstrap /mnt base linux linux-firmware 

swapon /dev/nvme1n1p4

genfstab -L /mnt >> /mnt/etc/fstab

mv scripts /mnt/

arch-chroot /mnt

