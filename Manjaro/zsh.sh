yay -Rns manjaro-zsh-config
yay -S zsh fzf
# chsh yu -s /usr/bin/zsh
sudo ln -sf ~/Github/config/zsh ~/.config/zsh
echo "source ~/.config/zsh/zshrc" > ~/.zshrc
zsh
zsh
zimfw install
zsh
# yay 的缓存可能不一致
rm -rf .cache/yay/completion.cache
