# export https_proxy="127.0.0.1:8888"
# export http_proxy="127.0.0.1:8888"
# yay -s ttf-symbola ttf-font-awesome ttf-nerd-fonts-symbols-mono
# yay -s ttf-fira-code wqy-zenhe

sudo pacman -s wqy-zenhei
sudo pacman -s ttf-sourcecodepro-nerd
sudo pacman -s otf-fira-mono otf-fira-sans
yay -s noto-fonts-emoji
# yay -s ttf-symbola
# yay -s ttf-mononoki

ln -sf ~/github/config/fontconfig ~/.config/fontconfig

sudo pacman -s fcitx5  fcitx5-config-qt fcitx5-gtk fcitx5-rime
yay -s  rime-cloverpinyin

echo 'patch:
  "menu/page_size": 8
  schema_list:
    - schema: clover' | tee -a ~/.local/share/fcitx5/rime/default.custom.yaml
rm -rf ~/.local/share/fcitx5/rime/build/*
rime_deployer --build ~/.local/share/fcitx5/rime /usr/share/rime-data ~/.local/share/fcitx5/rime/build
# git clone https://github.com/iorest/rime-setting ~/.local/share/fcitx5/rime

# rime 
# ibus 	    ~/.config/ibus/rime
# fcitx 	~/.config/fcitx/rime
# fcitx5 	~/.local/share/fcitx5/rime   
# rm ~/.local/share/fcitx5/rime
# git clone git@github.com:idvel/rime-settings.git ~/.local/share/fcitx5/rime

# theme 
mkdir -p ~/.local/share/fcitx5/themes/dracula
git clone https://github.com/drbbr/fcitx5-dracula-theme.git ~/.local/share/fcitx5/themes/dracula --depth 1

echo 'gtk_im_module default=fcitx
qt_im_module  default=fcitx
xmodifiers    default=\@im=fcitx
sdl_im_module default=fcitx' | sudo tee -a /etc/environment


# echo 'gtk_im_module default=ibus
# qt_im_module  default=ibus
# xmodifiers    default=\@im=ibus
# sdl_im_module default=ibus' | tee -a ~/.pam_environment
