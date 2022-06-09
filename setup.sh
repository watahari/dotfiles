#!/bin/bash

read -sp "Password: " PWD
echo

DOT_FILES=( .vimrc .vim .zshrc .zprofile Brewfile Brewfile.lock.json .gitconfig)

for file in ${DOT_FILES[@]}
do
  if [ -e ~/$file -a ! -L ~/$file ]; then
    echo ">> mv ~/$file ~/$file.bak"
    mv ~/$file ~/$file.bak
  fi
  if [ ! -e ~/$file ]; then
    echo ">> ln -s ~/dotfiles/$file ~/$file "
    ln -s $(pwd)/$file ~/$file
  fi
done

if [[ "$(uname)" == 'Darwin' ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  expect -c "
    set timeout 9999999
    spawn brew bundle
    expect {
      \"Password:\" {
        send \"${PWD}\n\"
        exp_continue
      }
    }
  "
fi

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
sh ./dein_installer.sh ./.vim
rm ./dein_installer.sh
