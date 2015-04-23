#!/bin/bash

# change current directory
# if you want to change vim settings, refer the following link
# http://vim-bootstrap.com/

HOME_DIR=`dirname $0`
cd ${HOME_DIR}

DOT_FILES=( .dir_colors .bash_profile .bashrc .vimrc )
for f in ${DOT_FILES[@]}; do ln -s $HOME/dotfiles/$f $HOME/$f; done

