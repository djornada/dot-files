export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="muse"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting rails ruby)

source $ZSH/oh-my-zsh.sh

export PATH="/usr/lib64/ccache:/usr/libexec/lightdm:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/diego/.local/bin:/home/diego/bin:/usr/local/texlive/2013/bin/x86_64-linux"
export MANPATH="/usr/local/man:$MANPATH:/usr/loca/texlive/2013/texmf-dis/doc/man"
export EDITOR="/usr/bin/vim"

TRAPUSR1() { rehash}; precmd() { [[ $history[$[ HISTCMD -1 ]] == *(yum|gem|export)* ]] && killall -USR1 zsh }
