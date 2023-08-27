# yay -S wayfire-git
# yay -S wf-shell

# wayfire_dir=~/Software/source/wayfire

# git clone https://aur.archlinux.org/wayfire.git $wayfire_dir
# sed '/build() {/a sed -i "1a\#include <cstdint>" "${pkgname}-${pkgver}"/subprojects/wf-utils/wayfire/rule/lambda_rule.cpp' $wayfire_dir/PKGBUILD
# cd $wayfire_dir
cd ~/Software/source/wayfire
makepkg -si

ln -s ~/Github/config/wayfire/*  ~/.config/
