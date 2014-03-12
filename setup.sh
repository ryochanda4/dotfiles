#!/bin/bash

# change current directory
HOME_DIR=`dirname $0`
cd ${HOME_DIR}

DOT_FILES=( .dir_colors .bash_profile .bashrc  )
for f in ${DOT_FILES[@]}; do ln -s $HOME/dotfiles/$f $HOME/$f; done

# vim setup
curl https://raw.github.com/avelino/.vimrc/master/bootstrap.sh -o - | sh

