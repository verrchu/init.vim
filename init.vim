call plug#begin('~/.config/nvim/plugged')

Plug 'w0rp/ale'
Plug 'unblevable/quick-scope'
Plug 'itchyny/lightline.vim'
Plug 'othree/yajs.vim'
Plug 'vim-scripts/paredit.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'godlygeek/tabular'
Plug 'nelstrom/vim-visual-star-search'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-entire'
Plug 'rking/ag.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'vim-erlang/vim-erlang-skeletons'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-omnicomplete'
call plug#end()

colorscheme spartan

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_fastbrowse = 0

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
\   'haskell': ['ghc-mod'],
\   'json': ['fixjson'],
\   'python': ['flake8'],
\   'erlang': ['erlc'],
\   'elixir': ['mix']
\ }

let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'

let g:ale_open_list = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_echo_cursor = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_list_window_size = 5
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

" set grepprg=ag\ --nogroup\ --column\ $*
" set grepformat=%f:%l:%c:%m

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

nmap <silent> <leader>gge :GitGutterEnable<CR>
nmap <silent> <leader>ggd :GitGutterDisable<CR>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

nnoremap <silent> <C-m> :<C-u>nohlsearch<CR><C-l>

nnoremap <C-p> :<C-u>FZF<CR>

nnoremap <silent> <leader>t :<C-u>Vex<CR>
nnoremap <silent> <leader>l :<C-u>ls<CR>

nnoremap <silent> <leader>[ :tabprevious<CR>
nnoremap <silent> <leader>] :tabnext<CR>

nnoremap <silent> ]g :GitGutterNextHunk<CR>
nnoremap <silent> [g :GitGutterPrevHunk<CR>

nnoremap & :&&<CR>
xnoremap & :&&<CR>

tnoremap <Esc> <C-\><C-n>

inoremap <leader>y λ
