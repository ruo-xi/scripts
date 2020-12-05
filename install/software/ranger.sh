yay -S ranger
#image preview 
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
sudo pip3 install ueberzug  # yay -S ueberzug
pip uninstall pillow
CC="cc -mavx2" pip install -U --force-reinstall pillow-simd
yay -S highlight
