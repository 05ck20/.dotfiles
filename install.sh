#!/bin/bash

DOTFILES="$HOME/.dotfiles"
TARGET="$HOME"

sudo pacman -S --needed - < pkglist.txt

ln -sfn "$DOTFILES/.zprofile"           "$TARGET/.zprofile"
ln -sfn "$DOTFILES/zsh"                 "$TARGET/.config/zsh"
git -C "$DOTFILES" submodule update --init --recursive
ln -sfn "$DOTFILES/git"                 "$TARGET/.config/git"
ln -sfn "$DOTFILES/nvim"                "$TARGET/.config/nvim"
sudo ln -sfn "$DOTFILES/nftables.conf"  "/etc/nftables.conf"
ln -sfn "$DOTFILES/X11"                 "$TARGET/.config/X11"
sudo make -C "$DOTFILES/suckless/dwm" clean install
sudo make -C "$DOTFILES/suckless/dwmblocks-async" clean install
sudo make -C "$DOTFILES/suckless/dmenu" clean install
sudo make -C "$DOTFILES/suckless/st" clean install
sudo make -C "$DOTFILES/suckless/slock" clean install
ln -sfn "$DOTFILES/dunst"               "$TARGET/.config/dunst"
ln -sfn "$DOTFILES/scripts"             "$TARGET/.local/bin"
sudo ln -sfn "$DOTFILES/udev/99-power.rules"  "/etc/udev/rules.d/99-power.rules"

echo "Done."
