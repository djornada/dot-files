#!/bin/sh
#removing some files and folders
[ -d ~/.i3 ] || mkdir  ~/.i3
[ -d ~/.vim/bundle/Vundle.vim ] || git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
[ -d ~/.oh-my-zsh ] || git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 

ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/tmux.conf ~/.tmux.conf

#my i3 conf files
chmod +x i3/conky
ln -sf $(pwd)/i3/config ~/.i3/config
ln -sf $(pwd)/i3/conky ~/.i3/conky
ln -sf $(pwd)/i3/conkyrc ~/.i3/conkyrc
