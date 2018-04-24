call plug#begin('~/.config/nvim/plugged')

Plug 'w0rp/ale'
Plug 'unblevable/quick-scope'
Plug 'itchyny/lightline.vim'
Plug 'othree/yajs.vim'
Plug 'vim-scripts/paredit.vim'
Plug 'kshenoy/vim-signature'

call plug#end()

colorscheme dark_eyes

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:lightline = {
\   'colorscheme': 'seoul256',
\   'active': {
\     'left': [['mode'], ['filename']],
\     'right': [['lineinfo'], ['percent'], ['filetype']]
\   },
\   'inactive': {
\     'left': [['filename']],
\     'right': [[]]
\   },
\   'tabline': {
\     'left': [['tabs']],
\     'right': [[]]
\   },
\   'tab': {
\     'active': ['filename', 'modified'],
\     'inactive': ['filename', 'modified']
\   }
\ }

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'haskell': ['ghc-mod']
\ }

let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_echo_cursor = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0

let g:paredit_electric_return = 0

filetype plugin on
filetype indent on

syntax enable
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
set list
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set splitright

augroup quickfix
  autocmd!
  autocmd QuickFixCmdPost make nested copen
augroup END

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

inoremap <leader>y λ
