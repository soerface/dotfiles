#!/bin/bash
set -e

read -p "Install zsh and set as default shell? [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "$ sudo apt-get install -y zsh"
    sudo apt-get install -y zsh
    chsh -s $(which zsh)
fi

read -p "Install fonts-powerline? [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "$ sudo apt-get install -y fonts-powerline"
    sudo apt-get install -y fonts-powerline
fi

mkdir -p $HOME/.config
ln -fsn `pwd`/.vim $HOME/.vim
ln -fsn `pwd`/.config/fontconfig $HOME/.config/fontconfig
ln -fs `pwd`/.vimrc $HOME/.vimrc
ln -fs `pwd`/.gvimrc $HOME/.gvimrc
ln -fs `pwd`/.zshrc $HOME/.zshrc
ln -fs `pwd`/.gitconfig $HOME/.gitconfig
mkdir -p $HOME/.local/share/fonts/
ln -fs `pwd`/powerlevel-fonts/*.ttf $HOME/.local/share/fonts/
fc-cache -fv

echo "You may want to run sudo dpkg-reconfigure locales"
