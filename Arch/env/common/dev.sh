
#!/bin/bash

sudo pacman -S go
go env -w GOPROXY="https://proxy.golang.com.cn,direct"
go env -w GO111MODULE="auto"

sudo pacman -S python 
sudo pacman -S python-pip
# yay -S python-pip python-pynvim
# sudo pacman -S python2 

sudo pacman -S nodejs
sudo pacman -S npm
# npm config set registry https://registry.npm.taobao.org

sudo pacman -S jdk11-openjdk jdk17-openjdk

sudo pacman -S rust
