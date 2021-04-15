rm -rf ~/.confg/zsh
yay -Rns manjaro-zsh-config
yay -S zsh
chsh yu -s /usr/bin/zsh
sudo ln -sf ~/Github/config/zsh ~/.config/zsh
echo "source ~/.config/zsh/zshrc" > ~/.zshrc
