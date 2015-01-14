#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "symlink: $DIR/.zshrc -> $HOME/.zshrc"
ln -f -s $DIR/.zshrc $HOME/.zshrc

echo "symlink: $DIR/vim -> $HOME/.vim"
ln -f -s $DIR/vim $HOME/.vim

echo "symlink: $DIR/oh-my-zsh -> $HOME/.oh-my-zsh"
ln -f -s $DIR/oh-my-zsh $HOME/.oh-my-zsh

echo "symlink: $DIR/.vimrc -> $HOME/.vimrc"
ln -f -s $DIR/.vimrc $HOME/.vimrc

echo "symlink: $DIR/.ctags -> $HOME/.ctags"
ln -f -s $DIR/.ctags $HOME/.ctags

echo "symlink: $DIR/COMMANDS -> $HOME/COMMANDS"
ln -f -s $DIR/COMMANDS $HOME/COMMANDS

echo "symlink: $DIR/.epicrc -> $HOME/epicrc"
ln -f -s $DIR/epicrc $HOME/.epicrc

echo "symlink: $DIR/.clush.conf -> $HOME/.clush.conf"
ln -f -s $DIR/.clush.conf $HOME/.clush.conf

function install_brew_packages {
  brew install tree
  brew install ctags
  brew install autojump
  brew install vim --with-client-server --override-system-vi
}

function install_packages {
  clush_install
}

function clush_install {
  echo "TODO: put clush install here"
}

echo "Do you wish to install brew plugins?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) install_brew_packages; break;;
        No ) exit;;
    esac
done

echo "Do you wish to install additional packages?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) install_packages; break;;
        No ) exit;;
    esac
done


