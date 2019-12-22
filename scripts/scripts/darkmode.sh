#!/bin/bash
cd $HOME/dotfiles
stow -D alacritty0
stow -D polybar0
stow alacritty
stow polybar
polybar-msg cmd restart
