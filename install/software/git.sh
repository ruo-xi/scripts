echo 'cao19981128' | sudo ln -s /home/yu/.config/ssh /home/yu/.ssh
git config --global user.name ruo-xi
git config --global user.email 314386327@qq.com

cd .config
git remote remove origin
git remote add origin git@github.com:ruo-xi/.config.git
cd ~
git clone git@github.com:ruo-xi/scripts.git

