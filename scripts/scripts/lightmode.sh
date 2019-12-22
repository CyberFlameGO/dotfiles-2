#!/bin/bash
cd $HOME/dotfiles
stow -D alacritty
stow -D polybar
stow alacritty0
stow polybar0
polybar-msg cmd restart
