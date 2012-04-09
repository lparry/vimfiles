" visual stuff
syntax on

if has("gui_running")
  set background=light
else
  set background=dark
endif

"256 color terminal support (ie. iTerm.app on osx)
set t_Co=256

set guifont=Menlo\ Regular\ for\ Powerline:h14

let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
  let g:Powerline_symbols = "unicode"
else
  let g:Powerline_symbols = "fancy"
endif

set wrap
"set number " line numbers
if version >= 730
  set relativenumber
endif

set ruler " show cursor line and column in the status line
set showmatch " briefly jump to matching bracket
set matchtime=10 " tenths of a second to show

set guioptions=ce "use console dialog for messages, hide menubar and scrollbars. who needs em?

set scrolloff=5 " show 5 lines of context when searching

set listchars=tab:>-,trail:·
set nolist!

set laststatus=2
"set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [format:%{&ff}]\ [type:%y]\ [ascii:\%03.3b]\ [hex:\%02.2B]\ [pos:%l,%v][%p%%]\ [len:%L]

"colorscheme
let g:solarized_visibility = "high"
let g:solarized_termcolors = 256
let g:solarized_italic    =  0
colorscheme solarized

if version >= 730
  set colorcolumn=+78
endif

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
