#!/usr/bin/sh

mkdir -p ~/.local/share/icons/RoundWaita/
shopt -s extglob
cp -avu "$(pwd -P)"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) ~/.local/share/icons/RoundWaita/
shopt -u extglob
find ~/.local/share/icons/RoundWaita/ -name '*.build' -type f -delete
gtk-update-icon-cache -f -t ~/.local/share/icons/RoundWaita && xdg-desktop-menu forceupdate

