export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"

ZSH_TMUX_AUTOSTART=true

alias zscfg="vim ~/.zshrc"
alias relzsh="source ~/.zshrc"

plugins=(archlinux debian gem git npm rails tmux tmuxinator zsh-syntax-highlighting pip)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/lib64/ccache:/usr/libexec/lightdm:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/djornada/bin:$HOME/.gem/ruby/2.2.0/bin"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="/usr/bin/vim"

zstyle ':completion:*' rehash true
