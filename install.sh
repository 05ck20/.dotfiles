#!/bin/bash

DOTFILES="$HOME/.dotfiles"
TARGET="$HOME"

ln -sfn "$DOTFILES/.zprofile"           "$TARGET/.zprofile"
ln -sfn "$DOTFILES/zsh"                 "$TARGET/.config/zsh"
git -C "$DOTFILES" submodule update --init --recursive
ln -sfn "$DOTFILES/git"                 "$TARGET/.config/git"
ln -sfn "$DOTFILES/nvim"                "$TARGET/.config/nvim"
sudo ln -sfn "$DOTFILES/nftables.conf"  "/etc/nftables.conf"

echo "Done."
