#!/usr/bin/zsh
#removing some files and folders
[ -d ~/.vim ] && rm -rf ~/.vim
[ -d ~/.i3 ] && rm -rf ~/.i3
[ -f ~/.zshrc ] && rm -f ~/.zshrc
[ -f ~/.vimrc ] && rm -f ~/.vimrc

mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.i3
mkdir -p ~/.vim/autoload
wget wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
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

cd ..
mv bundle ~/.vim/
#mv apprentice ~/.vim/bundle/
#mv nerdtree ~/.vim/bundle/
#mv nercommenter ~/.vim/bundle/
#mv tlib_vim ~/.vim/bundle/
#mv vim-addon-mw-utils ~/.vim/bundle/
#mv vim-snipmate ~/.vim/bundle/
#mv vim-snippets ~/.vim/bundle/

ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/zshrc ~/.zshrc

#my i3 conf files
chmod +x i3/conky
ln -s $(pwd)/i3/config ~/.i3/config
ln -s $(pwd)/i3/conky ~/.i3/conky
ln -s $(pwd)/i3/conkyrc ~/.i3/conkyrc
