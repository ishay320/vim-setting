#!/usr/bin/env bash
# ----------------------------------------------------------------
# script that auto install all the setting for vim
# ----------------------------------------------------------------

PS4="\033[34m>>\033[0m "
set -xe

BASE_FOLDER=$(pwd)

ln -s "${BASE_FOLDER}"/.vimrc ~/.vimrc || true
ln -s "${BASE_FOLDER}"/.vim ~/.vim || true

git submodule update --init --progress

# coc installation
sudo apt update
sudo apt install nodejs ccls -y
pushd .vim/pack/vendor/start/coc.nvim/
npm install
popd

vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
