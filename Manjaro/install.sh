sudo echo 'keycode 58 = Escape'

sh /scripts/Manjaro/git.sh 
sh /scripts/Manjaro/dev.sh
sh /scripts/Manjaro/browser.sh
sh /scripts/Manjaro/zsh.sh
sh /scripts/Manjaro/nvim.sh
sh /scripts/common/fonts.sh
sh /scripts/Manjaro/wm.sh
sh /scripts/Manjaro/ranger.sh
sh /scripts/Manjaro/audio.sh

# yay -S xorg-xev
# setxkbmap -option caps:escape


# yay -S typora
yay -S fd ripgrep ccat
