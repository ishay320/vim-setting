#!/usr/bin/env bash
# ----------------------------------------------------------------
# script that remove all the custom setting and revert them to default
# ----------------------------------------------------------------

PS4="\033[34m>>\033[0m "
set -xe

rm -r ~/.vim ~/.vimrc
