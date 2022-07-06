#!/bin/bash
comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base-devel -g gnome -g gnome-extra | sort | uniq) > pacman-list
flatpak --app list --columns=app > flatpak-list
