#!/bin/bash
set -e

read -p "Install zsh (needs root)? [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "$ sudo apt-get install -y zsh"
    sudo apt-get install -y zsh
fi

read -p "Set zsh as default shell? [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    chsh -s $(which zsh)
fi

read -p "Install fonts-powerline and fonts-emojione? (needs root) [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "$ sudo apt-get install -y fonts-powerline fonts-emojione"
    sudo apt-get install -y fonts-powerline fonts-emojione
fi


read -p "Link all dotfiles to $HOME? [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    mkdir -p $HOME/.config
    ln -fsn `pwd`/.vim $HOME/.vim
    ln -fsn `pwd`/.config/fontconfig $HOME/.config/fontconfig
    ln -fs `pwd`/.vimrc $HOME/.vimrc
    ln -fs `pwd`/.gvimrc $HOME/.gvimrc
    ln -fs `pwd`/.zshrc $HOME/.zshrc
    ln -fs `pwd`/.gitconfig $HOME/.gitconfig
    ln -fs `pwd`/.zsh $HOME/.zsh
    mkdir -p $HOME/.local/share/fonts/
    ln -fs `pwd`/powerlevel-fonts/*.ttf $HOME/.local/share/fonts/
    fc-cache -fv
fi


read -p "Run sudo dpkg-reconfigure locales? Might fix font issues with powerline (needs root) [yN] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo dpkg-reconfigure locales
fi
