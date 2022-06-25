# export https_proxy="127.0.0.1:8888"
# export http_proxy="127.0.0.1:8888"
# yay -S ttf-symbola ttf-font-awesome ttf-nerd-fonts-symbols-mono
# yay -S ttf-fira-code wqy-zenhe

yay -S wqy-microhei  ttf-fira-code
yay -S ttf-symbola
# yay -S nerd-fonts-source-code-pro
yay -S ttf-mononoki

ln -sf ~/Github/config/fontconfig ~/.config/fontconfig

yay -S fcitx5  fcitx5-config-qt fcitx5-gtk

yay -S fcitx5-rime rime-cloverpinyin
echo 'patch:
  "menu/page_size": 8
  schema_list:
    - schema: clover' | tee -a ~/.local/share/fcitx5/rime/default.custom.yaml

# git clone https://github.com/Iorest/rime-setting ~/.local/share/fcitx5/rime

# rime 
# ibus 	    ~/.config/ibus/rime
# fcitx 	~/.config/fcitx/rime
# fcitx5 	~/.local/share/fcitx5/rime   
# rm ~/.local/share/fcitx5/rime
# git clone git@github.com:iDvel/rime-settings.git ~/.local/share/fcitx5/rime

# theme 
mkdir -p ~/.local/share/fcitx5/themes/dracula
git clone https://github.com/drbbr/fcitx5-dracula-theme.git ~/.local/share/fcitx5/themes/dracula

echo 'GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=\@im=fcitx
SDL_IM_MODULE DEFAULT=fcitx' | tee -a ~/.pam_environment


# echo 'GTK_IM_MODULE DEFAULT=ibus
# QT_IM_MODULE  DEFAULT=ibus
# XMODIFIERS    DEFAULT=\@im=ibus
# SDL_IM_MODULE DEFAULT=ibus' | tee -a ~/.pam_environment
