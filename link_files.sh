#!/bin/bash
set -e

read -p "Install fonts-powerline? [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "$ sudo apt install fonts-powerline"
    sudo apt install fonts-powerline
fi

ln -fsn `pwd`/.vim $HOME/.vim
ln -fsn `pwd`/.config/fontconfig $HOME/.config/fontconfig
ln -fs `pwd`/.vimrc $HOME/.vimrc
ln -fs `pwd`/.gvimrc $HOME/.gvimrc
ln -fs `pwd`/.zshrc $HOME/.zshrc
ln -fs `pwd`/.gitconfig $HOME/.gitconfig
mkdir -p $HOME/.local/share/fonts/
ln -fs `pwd`/powerlevel-fonts/*.ttf $HOME/.local/share/fonts/
fc-cache -fv
