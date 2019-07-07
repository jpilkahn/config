#!/usr/bin/env bash

SELF_DIR="$(dirname "$(readlink -f "$0")")"

cp -rf ~/.bashrc $SELF_DIR
cp -rf ~/.gitconfig $SELF_DIR
cp -rf ~/.gitconfig-alias $SELF_DIR
cp -rf ~/.gitconfig-base $SELF_DIR
cp -rf ~/.gitconfig-color $SELF_DIR
cp -rf ~/.gitconfig-golang $SELF_DIR
cp -rf ~/.gitignore-global $SELF_DIR
cp -rf ~/.tmux.conf $SELF_DIR
cp -rf ~/.zshrc $SELF_DIR
