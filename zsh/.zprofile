#if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#	exec startx
#fi
#QT_QPA_PLATFORMTHEME="qt5ct"
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
export GPG_TTY=$(tty)
