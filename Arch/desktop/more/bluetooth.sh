sudo pacman -S bluez bluez-utils
sudo modprobe btusb
sudo systemctl enable --now bluetooth.service

# for bluetooth earphone
sudo pacman -S pulseaudio-bluetooth

# bluetoothctl
# select MAC_address    Select a default controller
# power on    turn the power to the controller
# devices    list devices 
# scan on    to find devices 
# agent on ???
# default-agent
# pair MAC_address
# trust MAC_address
# connect MAC_address

# boot power on
sudo sed -i 's/#AutoEnable=false/AutoEnable=true/g'  /etc/bluetooth/main.conf

# auto connection
echo 'load-module module-switch-on-connect' | sudo tee -a /etc/pulse/default.pa
