sudo pacman -S docker
sudo usermod -aG docker yu
# sudo gpasswd -a yu docker
# sudo gpasswd -d yu docker
sudo systemctl enable --now docker.service

# sudo docker network create my-net
