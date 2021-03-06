" :r!command == past output of command at current position
" :RMigration migration name == open a migration without worrying about the hash
" konqterm == shell within vim
"
set nocompatible
set encoding=utf-8
filetype off
set shell=/bin/bash
set guifont=Menlo\ Regular\ for\ Powerline:h14

" vundle bundles!
source ~/.vim/vundle.vim



" load some plugins manually
runtime macros/matchit.vim " better pair matching for %

" load up all my config shizzle
source ~/.vim/functions.vim
source ~/.vim/shortcuts.vim
source ~/.vim/preferences.vim
source ~/.vim/appearance.vim
