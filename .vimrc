set nocompatible " be iMproved
let mapleader=","
set shortmess=atI " no welcome info

"Colors
syntax enable
set t_Co=256
"set background=light
set background=dark
colorscheme molokai
"colorscheme solarized
"colorscheme phd

" Space & Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set backspace=indent,eol,start

" UI Config
set number
set relativenumber
set cursorline
set cursorcolumn 
filetype indent on
filetype plugin on
set copyindent
set nowrap

" Searching
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader>/ :nohlsearch<CR>

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
set mouse=a

set pastetoggle=<F12>

" temp files
set nobackup
set noswapfile
set history=1000


"Tmux
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

source $HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

