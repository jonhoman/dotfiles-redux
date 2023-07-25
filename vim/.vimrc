call plug#begin('~/.vim/plugged')

" plugins
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'hashivim/vim-terraform'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'

" Plug 'clembradley/alt-ruby'
" Plug 'fatih/vim-go', {'for': 'go'}
" Plug 'mileszs/ack.vim'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'

" colors
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

syntax on
filetype plugin indent on

" colorscheme
colorscheme dracula

" pieced together from:
" https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" tab setup
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set ruler

set nocompatible
set modelines=0
set nomodeline

set number

" make leader key comma
let mapleader = ","

" turn highlighting leader space
nnoremap <leader><space> :noh<cr>

" search setup
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase

" visual autocomplete for command menu
set wildmenu

" split window management
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nerd tree mappings
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

set noerrorbells
set shiftround

" no bell
set noeb vb t_vb=

" alt-ruby.vim mappings
nnoremap <leader>at :AlternateToggle<cr>
nnoremap <leader>av :AlternateVerticalSplit<cr>
nnoremap <leader>as :AlternateHorizontalSplit<cr>

" move swap and backup directories
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" lightline (statusline)
set laststatus=2

" vim-gitgutter
set updatetime=100

nnoremap <C-p> :<C-u>FZF<CR>
