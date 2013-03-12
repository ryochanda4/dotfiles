
#!/bin/bash

DOT_FILES=( .vimrc .vim .dir_colors )

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
