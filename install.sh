#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "symlink: $DIR/.zshrc -> $HOME/.zshrc"
ln -f -s $DIR/.zshrc $HOME/.zshrc

echo "symlink: $DIR/oh-my-zsh -> $HOME/.oh-my-zsh
ln -f -s $DIR/oh-my-zsh $HOME/.oh-my-zsh

echo "symlink: $DIR/.vimrc -> $HOME/.vimrc"
ln -f -s $DIR/.vimrc $HOME/.vimrc

echo "symlink: $DIR/.ctags -> $HOME/.ctags"
ln -f -s $DIR/.ctags $HOME/.ctags

function install_brew_packages {
  brew install tree
  brew install ctags
  brew install autojump
  brew install vim --with-client-server --override-system-vi
}

echo "Do you wish to install brew plugins?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) install_brew_packages; break;;
        No ) exit;;
    esac
done

