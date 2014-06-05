#!/usr/bin/zsh
#removing some files and folders
[ -d ~/.vim/autoload ] || mkdir -p ~/.vim/autoload
[ -d ~/.vim ] || mkdir  ~/.vim
[ -d ~/.i3 ] || mkdir -rf ~/.i3

wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
mv pathogen.vim ~/.vim/autoload
mkdir bundle
cd bundle

#Download vim plugins
git clone https://github.com/romainl/Apprentice.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-scripts/The-NERD-Commenter.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/majutsushi/tagbar.git

cd ..
mv bundle ~/.vim/

ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/zshrc ~/.zshrc

#my i3 conf files
chmod +x i3/conky
ln -sf $(pwd)/i3/config ~/.i3/config
ln -sf $(pwd)/i3/conky ~/.i3/conky
ln -sf $(pwd)/i3/conkyrc ~/.i3/conkyrc
