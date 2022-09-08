#!/usr/bin/env bash
# ----------------------------------------------------------------
# script that auto install all the setting for vim
# ----------------------------------------------------------------

PS4="\033[34m>>\033[0m "
set -xe

BASE_FOLDER=$(pwd)

ln -s "${BASE_FOLDER}"/.vimrc ~/.vimrc
ln -s "${BASE_FOLDER}"/.vim ~/.vim

git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q