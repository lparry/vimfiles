#!/bin/sh
rm -rf ~/.vimrc ~/.vim
ln -s ~/Dropbox/vimfiles/vim ~/.vim
ln -s ~/Dropbox/vimfiles/vimrc ~/.vimrc
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -c "execute \"BundleInstall\" | q | q"
