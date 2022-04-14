yay -S zsh
yay -S fzf
mkdir ~/.config/zsh
ln -s ~/Github/config/zsh/* ~/.config/zsh/
echo "source ~/.config/zsh/zshrc" | tee -a ~/.zshrc
sudo usermod -s /bin/zsh yu

# yay completion
# rm -rf .cache/yay/completion.cache





