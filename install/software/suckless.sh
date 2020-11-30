cd ~/software/source

git clone git@github.com:ruo-xi/dwm.git
git clone git@github.com:ruo-xi/st.git
cd dwm
git checkout mydwm
sudo make install clean
cd ../st
git checkout myst
sudo make install clean

yay -S dmenu2

echo 'while true; do
    # Log stderror to a file
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done' >> ~/.xinitrc
