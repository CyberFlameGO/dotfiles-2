alias cdgf="cd ~/Documents/GDrive/groff"
alias sd="sudo systemctl"
alias cfg="cd ~/.config"
alias vim=nvim
alias ddstatus="watch -n1 'sudo kill -USR1 $(pgrep ^dd)'"
alias p2p="sudo pvpn -p2p"
alias dp="sudo pvpn -d"
alias ssh="TERM=xterm-256color ssh"

alias vcf="veracrypt --auto-mount=favorites"
alias vcd="veracrypt -d"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.dotnet/tools
export PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin

export LIBCLANG_PATH=$(llvm-config --prefix)/lib64
export GOPATH=$HOME/.go

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

#oh my zsh theme
ZSH_THEME="gnzhc"

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
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Syntax highlighting. Requires zsh-syntax-highlighting from community repo in arch
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
