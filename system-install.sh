#!/usr/bin/bash

sudo mkdir -p /usr/share/icons/RoundWaita/
shopt -s extglob
sudo cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) /usr/share/icons/RoundWaita/
shopt -u extglob
sudo find /usr/share/icons/RoundWaita/ -name '*.build' -type f -delete
sudo gtk-update-icon-cache -f -t /usr/share/icons/RoundWaita && xdg-desktop-menu forceupdate
