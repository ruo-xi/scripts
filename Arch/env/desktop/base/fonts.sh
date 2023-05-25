# export https_proxy="127.0.0.1:8888"
# export http_proxy="127.0.0.1:8888"
# yay -S ttf-symbola ttf-font-awesome ttf-nerd-fonts-symbols-mono
# yay -S ttf-fira-code wqy-zenhe

sudo pacman -S wqy-zenhei
sudo pacman -S ttf-sourcecodepro-nerd
sudo pacman -S otf-fira-mono otf-fira-sans
yay -S noto-fonts-emoji
# yay -S ttf-symbola
# yay -S ttf-mononoki

ln -sf ~/Github/config/fontconfig ~/.config/fontconfig

sudo pacman -S fcitx5  fcitx5-config-qt fcitx5-gtk fcitx5-rime
yay -S  rime-cloverpinyin

echo 'patch:
  "menu/page_size": 8
  schema_list:
    - schema: clover' | tee -a ~/.local/share/fcitx5/rime/default.custom.yaml
rm -rf ~/.local/share/fcitx5/rime/build/*
rime_deployer --build ~/.local/share/fcitx5/rime /usr/share/rime-data ~/.local/share/fcitx5/rime/build
# git clone https://github.com/Iorest/rime-setting ~/.local/share/fcitx5/rime

# rime 
# ibus 	    ~/.config/ibus/rime
# fcitx 	~/.config/fcitx/rime
# fcitx5 	~/.local/share/fcitx5/rime   
# rm ~/.local/share/fcitx5/rime
# git clone git@github.com:iDvel/rime-settings.git ~/.local/share/fcitx5/rime

# theme 
mkdir -p ~/.local/share/fcitx5/themes/dracula
git clone https://github.com/drbbr/fcitx5-dracula-theme.git ~/.local/share/fcitx5/themes/dracula --depth 1

echo 'GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=\@im=fcitx
SDL_IM_MODULE DEFAULT=fcitx' | sudo tee -a /etc/environment


# echo 'GTK_IM_MODULE DEFAULT=ibus
# QT_IM_MODULE  DEFAULT=ibus
# XMODIFIERS    DEFAULT=\@im=ibus
# SDL_IM_MODULE DEFAULT=ibus' | tee -a ~/.pam_environment
