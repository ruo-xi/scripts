paru -S wine-mono
paru -S lib32-gnutls lib32-libpulse
sudo systemctl restart systemd-binfmt.service


cd ~/.wine/drive_c/windows/Fonts && for i in /usr/share/fonts/**/*.{ttf,otf}; do ln -s "$i" ; done
