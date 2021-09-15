yay -S samba
sudo ln -sf ~/Github/config/samba/smb.conf /etc/samba
useradd -M -s /sbin/nologin share -p cao19981128
sudo smbpasswd -a share

