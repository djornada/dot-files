export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"

alias zscfg="vim ~/.zshrc"
alias relzsh="source ~/.zshrc"

plugins=(archlinux debian gem git npm rails tmux tmuxinator zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/lib64/ccache:/usr/libexec/lightdm:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/djornada/bin:"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="/usr/bin/vim"

TRAPUSR1() { rehash}; precmd() { [[ $history[$[ HISTCMD -1 ]] == *(pacin|gem|export|npm)* ]] && killall -USR1 zsh }
