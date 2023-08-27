sudo pacman -S axel

### use 
# axel -n xxx(connection nums) -o file name -s/-max-speed

# pacman use axel 
# 1.sudo pacman -S axel
# 2.sudo vim /etc/axelrc
# alternate_output = 1
# 去掉注释使之生效(这里不是必须的,但是这样子看着更习惯)
# 3.sudo vim /etc/pacman.conf
# XferCommand = /usr/bin/axel -n 5 -a -o %o %u
# 增加这样一行,来5个线程下载
