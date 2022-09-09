sudo pacman -S podman

# for non-Root
sudo pacman -S fuse-overlayfs slirp4netns
sudo sysctl kernel.unprivileged_userns_clone
echo "yu:100000:65536" | sudo tee -a /etc/subuid
echo "yu:100000:65536" | sudo tee -a /etc/subgid
