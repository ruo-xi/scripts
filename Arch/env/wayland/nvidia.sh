sudo pacman -S nvidia
paru -S nvidia-vaapi-driver-git

# grub parm
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="/&nvidia-drm.modeset=1 /g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# linux module
sudo sed -i 's/^MODULES=(/&nvidia nvidia-modeset nvidia-uvm nvidia-drm /g' /etc/mkinitcpio.conf
sudo mkinitcpio -p linux

# pacman hooks
sudo mkdir /etc/pacman.d/hooks
echo "[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
Target=nvidia
Target=linux
# Change the linux part above and in the Exec line if a different kernel is used

[Action]
Description=Update Nvidia module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c 'while read -r trg; do case $trg in linux) exit 0; esac; done; /usr/bin/mkinitcpio -P'" | sudo tee -a /etc/pacman.d/hooks/nvidia.hook


# env var 
echo 'GBM_BACKEND=nvidia-drm
__GLX_VENDOR_LIBRARY_NAME=nvidia
LIBVA_DRIVER_NAME=nvidia
VDPAU_DRIVER=nvidia' | tee -a ~/.pam_environment

# __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json
