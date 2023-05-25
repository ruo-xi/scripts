# cd ~/Software/pkg
pkg_path=~/Software/pkg

wlroots_pkg_path=$pkg_path/wlroots
wlroots_pkg_file=$wlroots_pkg_path/PKGBUILD

pkg_pathch_path=$pkg_path/patch
wlroots_pkg_patch_path=$pkg_pathch_path/wlroots 

mkdir -p $wlroots_pkg_path

wget https://raw.githubusercontent.com/archlinux/svntogit-community/packages/wlroots/trunk/PKGBUILD --directory-prefix $wlroots_pkg_path -N

Sha256Code=$(sha256sum $wlroots_pkg_patch_path/nvidia.patch | cut -d " " -f 1)
cp $wlroots_pkg_patch_path/nvidia.patch $wlroots_pkg_path

sed -i "s/source=(/&\"nvidia.patch\"\n/g" $wlroots_pkg_file
sed -i "s/sha256sums=(/&'$Sha256Code'\n/g" $wlroots_pkg_file
sed -i "/build() {/iprepare() {   \n    patch --directory=\"\$pkgname-\$pkgver\" --forward --strip=0 \\\\\n      --input=\"\$srcdir/nvidia.patch\"   \n}\n" $wlroots_pkg_file

# if [[ ! -d ~/Software/source/wlroots-nvidia ]]; then
#   git clone https://aur.archlinux.org/wlroots-nvidia.git ~/Software/source/wlroots-nvidia
#   sed -i 's/provides=("/&wlroots" "/g' ~/Software/source/wlroots-nvidia/PKGBUILD
# fi

# cd ~/Software/source/wlroots-nvidia
# makepkg -si
