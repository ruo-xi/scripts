yay -S zsh
yay -Rns manjaro-zsh-config
chsh yu -s /usr/bin/zsh
sudo ln -sf ~/Github/config/zsh ~/.config/zsh
echo "source ~/.config/zsh/zshrc" > ~/.zshrc
