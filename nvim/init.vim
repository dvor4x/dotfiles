syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set ruler
set cursorline
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set colorcolumn=80

call plug#begin()
    Plug 'pineapplegiant/spaceduck', { 'branch' : 'dev' }
    Plug 'neoclide/coc.nvim', { 'branch' : 'release' }
    Plug 'kien/ctrlp.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'nelsyeung/twig.vim'
call plug#end()

if executable('rg')
  let g:rg_derive_root='true'
endif

let mapleader = " "

let g:ctrlp_user_command = [ '.git/','git --git-dir=%/.git ls-files -oc --exclude-standard' ] 
let g_ctrlp_use_caching = 0
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 85

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spaceduck
hi ColorColumn guibg=#07f27d
