dir=~/.config/zsh

sudo pacman -S zsh
sudo pacman -S fzf zoxide

if [ ! -d $dir ]; then 
  mkdir -p $dir
  ln -s ~/Github/config/zsh ~/.config/zsh
fi

echo "source ~/.config/zsh/zshrc" | tee -a ~/.zshrc

sudo usermod -s /bin/zsh yu

# yay completion
# rm -rf .cache/yay/completion.cache
