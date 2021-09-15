# export https_proxy="127.0.0.1:8888"
# export http_proxy="127.0.0.1:8888"
yay -S adobe-source-code-pro-fonts ttf-symbola ttf-font-awesome ttf-nerd-fonts-symbols-mono
yay -S ttf-fira-code wqy-zenhe

ln -sf ~/Github/config/fontconfig ~/.config/fontconfig

yay -S fcitx5 fcitx5-rime fcitx5-config-qt fcitx5-gtk

echo 'GTK_IM_MODULE DEFAULT=fcitx
QT_IM_MODULE  DEFAULT=fcitx
XMODIFIERS    DEFAULT=\@im=fcitx
SDL_IM_MODULE DEFAULT=fcitx' > ~/.pam_environment
