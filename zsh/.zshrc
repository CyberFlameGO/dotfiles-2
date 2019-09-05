alias gotop="gotop -c solarized"
alias neofetch="neofetch --source ~/Pictures/arch.png"

alias cfg="cd ~/.config"
alias vim=nvim
alias ddstatus="watch -n1 'sudo kill -USR1 $(pgrep ^dd)'"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.dotnet/tools
export PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin

export LIBCLANG_PATH=$(llvm-config --prefix)/lib64

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

#oh my zsh theme
ZSH_THEME="gnzh"

ZSH_DISABLE_COMPFIX="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"