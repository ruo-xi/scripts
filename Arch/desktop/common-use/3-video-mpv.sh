sudo pacman -S mpv wget

mkdir ~/.config/mpv
ln -s ~/Github/config/mpv/* ~/.config/mpv

mkdir -p ~/.config/mpv/playlists
ln -s ~/.config/mpv/playlists ~/Playlist

# mkdir ~/.config/mpv/scripts

# cd ~/.config/mpv/scripts
# export https_proxy="127.0.0.1:8888"
# export http_proxy="127.0.0.1:8888"


# wget https://raw.githubusercontent.com/mpv-player/mpv/master/TOOLS/lua/autoload.lua
# wget https://raw.githubusercontent.com/jonniek/mpv-playlistmanager/master/playlistmanager.lua
# wget https://raw.githubusercontent.com/AN3223/dotfiles/master/.config/mpv/scripts/auto-save-state.lua
