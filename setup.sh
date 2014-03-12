#!/bin/bash

# change current directory
HOME_DIR=`dirname $0`
cd ${HOME_DIR}

# vim setup
mkdir .vim
cd .vim
curl https://raw.github.com/avelino/.vimrc/master/bootstrap.sh -o - | sh

# set symbolic links 
cd ..
DOT_FILES=( .dir_colors .bash_profile .bashrc .vim )

for file in ${DOT_FILES[@]}; do ln -s $HOME/dotfiles/$file $HOME/$file; done

# for bash and zsh, only if no alias is already set
alias vi >/dev/null 2>&1 || alias vi=vim
