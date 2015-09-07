set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'VundleVim/Vundle.vim'

" My Plugins here:
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag' " Enhances surround.vim.
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
" Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'sjl/gundo.vim'
" Plugin 'lparry/vim-rspec-jump'
Plugin 'ConradIrwin/vim-bracketed-paste' " Make vim's paste less shit
Plugin 'tpope/vim-repeat' " lets . interact with plugin maps
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter' " git status in a gutter
Plugin 'tomtom/tcomment_vim' " easy code commenting
"Plugin 'othree/vim-autocomplpop' " auto-show the auto-completion menu

"Plugin 'SuperTab--Van-Dewoestine'

" Colorschemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-auto-save'
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 5

" use SHA cfc14a4, some nimrod broke the plugin sometime after this
Plugin 'bogado/file-line',  {'pinned': 1} " lets you specify line number when opening a file from the command line

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
