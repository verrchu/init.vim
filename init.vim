call plug#begin('~/.config/nvim/plugged')

Plug 'unblevable/quick-scope'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'idris-hackers/idris-vim'
Plug 'othree/yajs.vim'
Plug 'easymotion/vim-easymotion'
" Plug 'justinmk/vim-dirvish'

call plug#end()

" let loaded_netrwPlugin = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 20
let g:netrw_dirhistmax = 0

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'tabline': {
      \   'left': [['tabs']],
      \   'right': [[]],
      \ },
      \ 'tab': {
      \   'active': ['filename', 'modified'],
      \   'inactive': ['filename', 'modified'],
      \ },
      \ }

colorscheme goodwolf

filetype plugin on
filetype indent on

set noerrorbells
set novisualbell

set nobackup
set nowritebackup
set noswapfile

set lazyredraw
set wildmenu
set cursorline
set colorcolumn=80
set noshowmode
set nocompatible
syntax enable
set list
set number
" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set listchars=eol:#,tab:>·,trail:~,space:·

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nmap <silent> <leader>[ ;tabprev<cr>
nmap <silent> <leader>] ;tabnext<cr>

nnoremap ; :
nnoremap : ;
