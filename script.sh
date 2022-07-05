#!/bin/bash
tar -xvf ./etc.tar.xz
touch /etc/subuid /etc/subgid
usermod --add-subuids 100000-165535 --add-subgids 100000-165535 jan
cp ./etc/* /etc -r
locale-gen
systemctl enable zram
systemctl enable bluetooth
