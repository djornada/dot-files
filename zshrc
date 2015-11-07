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


function extract()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xvjf $1     ;;
			*.tar.gz)    tar xvzf $1     ;;
			*.bz2)       bunzip2 $1      ;;
			*.rar)       unrar x $1      ;;
			*.gz)        gunzip $1       ;;
			*.tar)       tar xvf $1      ;;
			*.tbz2)      tar xvjf $1     ;;
			*.tgz)       tar xvzf $1     ;;
			*.zip)       unzip $1        ;;
			*.Z)         uncompress $1   ;;
			*.7z)        7z x $1         ;;
			*)           echo "'$1' cannot be extracted via >extract<" ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}

zstyle ':completion:*' rehash true
