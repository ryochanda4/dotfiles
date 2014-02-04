
#!/bin/bash

# set symbolic links 
DOT_FILES=( .dir_colors .gitconfig .gitignore .bash_profile .bashrc )

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# for bash and zsh, only if no alias is already set
alias vi >/dev/null 2>&1 || alias vi=vim
