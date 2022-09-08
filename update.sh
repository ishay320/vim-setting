#!/usr/bin/env bash
# ----------------------------------------------------------------
# script that update all the plugins
# ----------------------------------------------------------------

PS4="\033[34m>>\033[0m "
set -xe

git submodule update --remote --merge
git commit
