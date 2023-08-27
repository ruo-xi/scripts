
#!/bin/bash

sudo pacman -S go
# go env -w GOPROXY=https://goproxy.io,direct
# go env -w GOPROXY=https://goproxy.cn,direct
go env -w GOPROXY=https://goproxy.cn
go env -w GO111MODULE=on

sudo pacman -S python 
sudo pacman -S python-pip
# yay -S python-pip python-pynvim
# sudo pacman -S python2 

sudo pacman -S nodejs npm
sudo corepack enable
sudo corepack prepare pnpm@latest --activate
# pnpm config set registry https://registry.npm.taobao.org
pnpm setup

# pnpm config set registry https://registry.npm.taobao.org

# npm config set registry https://registry.npm.taobao.org

# sudo pacman -S jdk11-openjdk jdk17-openjdk
sudo pacman -S jdk17-openjdk

sudo pacman -S rustup
# rustup toolchain install stable
# rustup toolchain install beta
# rustup default beta
# rustup toolchain install {stable beta nightly}
# rustup run {stable beta nightly} rustc --version
# rustup default {stable beta nightly}
# rustup update
# sudo pacman -S rust
