" Enable file type detection.
filetype plugin on
filetype indent on

set wrap

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch " highlight match while typing search pattern
set showmatch
set infercase " adjust case of match for keyword completion

" make backspace work properly
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" backup files
set nobackup
set backupskip=/tmp/*,/private/tmp/*"
set noswapfile

" tabs
set expandtab " use spaces when <Tab> is inserted
set shiftwidth=2 " number of spaces to use for (auto)indent step
set softtabstop=2
set tabstop=2

set tags=./tags;

set hidden "allow buffers to be hidden without writing to disk

set wildmenu
set wildmode=list:longest,full " better filename completion

" use the osx clipboard
set clipboard=unnamed

" mouse works in insert mode
"if has("gui_running")
set mouse=a


" Make .md files highlight as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


" SuperTab preferences
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabMappingForward = '<tab>'
let g:SuperTabMappingBackward = '<s-tab>'


au BufRead,BufNewFile *.md set textwidth=80
au BufRead,BufNewFile *.markdown set textwidth=80

iabbrev didnt didn't
iabbrev dont don't
iabbrev wasnt wasn't
