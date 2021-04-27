yay -S ranger
rm -rf ~/.config/ranger
sudo ln -sf ~/Github/config/ranger ~/.config/ranger
#image preview 
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# pip uninstall pillow
# CC="cc -mavx2" pip install -U --force-reinstall pillow-simd
# yay -S highlight
