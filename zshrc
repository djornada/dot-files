export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"

alias zscfg="vim ~/.zshrc"
alias relzsh="source ~/.zshrc"

ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOSTART=true

plugins=(archlinux debian gem git npm rails rake tmux tmuxinator zsh-syntax-highlighting pip)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/lib64/ccache:/usr/libexec/lightdm:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/djornada/bin:$HOME/.gem/ruby/2.2.0/bin"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="/usr/bin/vim"

zstyle ':completion:*' rehash true
