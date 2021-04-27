# config
git config --global user.name ruo-xi
git config --global user.email 314386327@qq.com

sudo git config --global user.name ruo-xi
sudo git config --global user.email 314386327@qq.com

mkdir Github
cd Github
git clone https://github.com/ruo-xi/.config config

# config ssh
sudo ln -sf ~/Github/config/ssh ~/.ssh
chmod 400 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub

# change config to ssh connection
cd config
git remote remove origin
git remote add origin git@github.com:ruo-xi/.config.git
