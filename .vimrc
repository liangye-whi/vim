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
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
set mouse=a

" F2 拼写检查开关
nnoremap <F2> :set spell! spell?<CR>
" F3 显示可打印字符开关
nnoremap <F3> :set list! list?<CR>
" F4 换行开关
nnoremap <F4> :set wrap! wrap?<CR>
" F12 粘贴辅助开关
set pastetoggle=<F12>

" temp files
set nobackup
set noswapfile
set history=1000

" fast system copy-paste
map Y "+y
map P "+p

"Tmux
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" PowerLine
source $HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

" Vundle!!
filetype off                  " required!  
  
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
  
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
  
" 可以通过以下四种方式指定插件的来源  
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替。  
"Bundle 'Indent Guides'  
" b) 指定Github中其他用户仓库的插件，使用“用户名/插件名称”的方式指定  
"Bundle 'tpope/vim-fugitive'  
"Bundle 'Lokaltog/vim-easymotion'  
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}  
"Bundle 'tpope/vim-rails.git'  
"Bundle 'Valloric/YouCompleteMe'
"let g:ycm_collect_identifiers_from_tags_files = 1  
"let g:ycm_collect_identifiers_from_comments_and_strings = 1  
"let g:syntastic_ignore_files=[".*\.py$"]  
"let g:ycm_seed_identifiers_with_syntax = 1  
"let g:ycm_complete_in_comments = 1  
"let g:ycm_confirm_extra_conf = 0  
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_server_python_interpreter='/usr/bin/python2'

Bundle 'nathanaelkane/vim-indent-guides.git'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" c) 指定非Github的Git仓库的插件，需要使用git地址  
"Bundle 'git://git.wincent.com/command-t.git'  
  
" d) 指定本地Git仓库中的插件  
"Bundle 'file:///Users/gmarik/path/to/plugin'  
" Then :BundleInstall  
filetype plugin indent on     " required!  
