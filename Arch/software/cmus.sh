cd ~/Software/source
git clone https://github.com/cmus/cmus.git
cd cmus
yay -S libmad
./configure CONFIG_PULSE=y CONFIG_MAD=y CONFIG_FLAC=y
sudo make install
