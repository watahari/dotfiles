#!/bin/bash

DOT_FILES=( .vimrc .vim)

for file in ${DOT_FILES[@]}
do
  if [ -e ~/$file -a ! -L ~/$file ]; then
    echo ">> mv ~/$file ~/$file.bak"
    mv ~/$file ~/$file.bak
  fi
  if [ ! -e ~/$file ]; then
    echo ">> ln -s ~/dotfiles/$file ~/$file "
    ln -s ~/dotfiles/$file ~/$file 
  fi
done

brew install thefuck

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ./.vim
