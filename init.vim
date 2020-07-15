call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'zivyangll/git-blame.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-abolish'
Plug 'nelstrom/vim-visual-star-search'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-entire'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

colorscheme spartan

let g:ranger_replace_netrw = 1

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
set noshowmode
set nocompatible
set number
set nowrap
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set splitright

set updatetime=100

set colorcolumn=80
set cursorline
highlight ColorColumn ctermbg=235
highlight CursorLine ctermbg=235

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

nnoremap <silent><C-m> :<C-u>nohlsearch<CR><C-l>

nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <leader>c :echo @%<CR>

nnoremap <silent> <leader>[ :tabprevious<CR>
nnoremap <silent> <leader>] :tabnext<CR>

nnoremap <silent> ]g :GitGutterNextHunk<CR>
nnoremap <silent> [g :GitGutterPrevHunk<CR>

tnoremap <Esc> <C-\><C-n>

nnoremap <leader>s :<C-u>call gitblame#echo()<CR>

nmap <silent> gd <Plug>(coc-definition)
