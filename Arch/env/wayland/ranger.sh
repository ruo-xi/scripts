yay -S ranger
mkdir ~/.config/ranger
ln -s ~/Github/config/ranger/* ~/.config/ranger/

# need proxy
export http_proxy='127.0.0.1:8888'
export https_proxy='127.0.0.1:8888'

#image preview 
# pip install ueberzug
# pip uninstall pillow
# CC="cc -mavx2" pip install -U --force-reinstall pillow-simd

# icon
yay -S nerd-fonts-source-code-pro
git clone https://github.com/cdump/ranger-devicons2 ~/.config/ranger/plugins/devicons2

# text highlight 
yay -S highlight
