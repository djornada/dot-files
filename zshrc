export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="simple"

alias zscfg="vim ~/.zshrc"

plugins=(git zsh-syntax-highlighting rails ruby npm yum tmuxinator)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/lib64/ccache:/usr/libexec/lightdm:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/djornada/bin"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="/usr/bin/vim"

#alias tmux="tmux -2" 

TRAPUSR1() { rehash}; precmd() { [[ $history[$[ HISTCMD -1 ]] == *(pacman|gem|export|npm)* ]] && killall -USR1 zsh }
