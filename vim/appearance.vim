" visual stuff
syntax on

"256 color terminal support (ie. iTerm.app on osx)
set t_Co=256

if has("gui_running")
  set background=light
else
  set background=dark
endif

" "colorscheme
let g:solarized_visibility = "high"
let g:solarized_termcolors = 256
let g:solarized_italic    =  0
let g:solarized_termtrans=1
colorscheme solarized
" colorscheme jellybeans

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h12

" set guifont=Menlo\ Regular\ for\ Powerline:h14
" " Menlo used old style powerline codes, needs the following
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_symbols.branch = '⭠'
" let g:airline_symbols.readonly = '⭤'
" let g:airline_symbols.linenr = '⭡'

set wrap
"set number " line numbers
"set relativenumber
set nonumber

set ruler " show cursor line and column in the status line
set showmatch " briefly jump to matching bracket
set matchtime=10 " tenths of a second to show

set guioptions=ce "use console dialog for messages, hide menubar and scrollbars. who needs em?

set scrolloff=5 " show 5 lines of context when searching

set listchars=tab:>-,trail:·
set nolist!

set laststatus=2
"set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [format:%{&ff}]\ [type:%y]\ [ascii:\%03.3b]\ [hex:\%02.2B]\ [pos:%l,%v][%p%%]\ [len:%L]

set colorcolumn=+78

"make visual mode stand out better
highlight Visual guibg=#FF0000 ctermbg=60
highlight Search guifg=NONE ctermfg=NONE guibg=#990000 ctermbg=235 gui=italic cterm=underline

" line and column makers
highlight CursorLine ctermbg=none cterm=bold gui=bold
highlight CursorColumn ctermbg=none cterm=bold gui=bold
set cursorcolumn
set cursorline
highlight LineNr ctermfg=gray

"macvim transparancy
if has("gui_running")
  set transp=0
endif

" Use a bar-shaped cursor for insert mode, even through tmux.
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
