" Don't know if this is really necessary, but...
set nocompatible
syntax on

set backspace=indent,eol,start

" Indentation
set smartindent
set tabstop=3
set shiftwidth=3
set expandtab

" No menus
set guioptions-=m
set guioptions-=T

" Case-sensitive search only if there are uppercase characters in the search string
set ignorecase
set smartcase

" Don't make backups
set nobackup
set nowritebackup

" Colorscheme
colorscheme koehler

" Font (taken from http://amix.dk/vim/vimrc.html)
if has ("win32")
  set gfn=Consolas:h12
elseif has ("unix")
  set gfn=Monospace\ 12
endif

" Search
set hlsearch
set incsearch

" Show matching parenthesis or brace
set showmatch

" Encoding
set encoding=utf-8
set ff=unix

" Switch working directory to the current file
set autochdir

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Show/hide hidden characters with ,l
nmap ,l :set list!

" Tab shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>
nnoremap td  :tabclose<CR>
nnoremap tn  :tabnew<CR>

" Don't start ed compatibility mode
nnoremap Q <nop>
