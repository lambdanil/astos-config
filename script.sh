#!/bin/bash

# To get pacman package list:
#     comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base-devel -g gnome -g gnome-extra | sort | uniq)
# To get flatpak package list:
#     flatpak --app list --columns=app

# Extract /etc files
tar -xvf ./etc.tar.xz

# Necessary for podman
touch /etc/subuid /etc/subgid
usermod --add-subuids 100000-165535 --add-subgids 100000-165535 jan 

# Copy over custom /etc files
cp ./etc/* /etc -r

# Generate locale
locale-gen

# System services
systemctl enable zram
systemctl enable bluetooth
