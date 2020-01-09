#!/usr/bin/env bash

ABSPATH="$(dirname "$(readlink -f "$0")")"

DESTINATION=$HOME

mkdir -p $DESTINATION

ln -sf "$ABSPATH/.all_shells_common_profile" $DESTINATION
ln -sf "$ABSPATH/.bashrc" $DESTINATION
ln -sf "$ABSPATH/.gitconfig" $DESTINATION
ln -sf "$ABSPATH/.gitconfig-alias" $DESTINATION
ln -sf "$ABSPATH/.gitconfig-base" $DESTINATION
ln -sf "$ABSPATH/.gitconfig-color" $DESTINATION
ln -sf "$ABSPATH/.gitconfig-golang" $DESTINATION
ln -sf "$ABSPATH/.gitignore-global" $DESTINATION
ln -sf "$ABSPATH/.tmux.conf" $DESTINATION
ln -sf "$ABSPATH/.zpreztorc" $DESTINATION
ln -sf "$ABSPATH/.zshrc" $DESTINATION
