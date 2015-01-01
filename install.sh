#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "symlink: $DIR/.zshrc -> $HOME/.zshrc"
ln -s $DIR/.zshrc $HOME/.zshrc
