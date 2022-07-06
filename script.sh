#!/bin/bash
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
