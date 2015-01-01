#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "symlink: $DIR/.zshrc -> $HOME/.zshrc"
ln -s $DIR/.zshrc $HOME/.zshrc

echo "symlink: $DIR/.vimrc -> $HOME/.vimrc"
ln -s $DIR/.vimrc $HOME/.vimrc

echo "symlink: $DIR/.ctags -> $HOME/.ctags"
ln -s $DIR/.ctags $HOME/.ctags
