call plug#begin('~/.vim/plugged')

" plugins
Plug 'airblade/vim-gitgutter'
Plug 'clembradley/alt-ruby'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sensible'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" colors
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sjl/badwolf'

call plug#end()

syntax on
filetype plugin indent on

" colorscheme
" colorscheme badwolf
set t_Co=256
let g:dracula_italic = 0
colorscheme dracula

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

" ctrlp ignore list
set wildignore+=*/log/*,*/runs/*,*/tmp/*,*/packages/*,*/bin/*,*/coverage/*,*/public/*,*/node_modules/*,*/.terraform/*
" ctrlp no max number of files
let g:ctrlp_max_files = 0
" ctrlp show hidden files
let g:ctrlp_show_hidden = 1

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

" vim-notes config
let g:notes_directories = ["~/Dropbox/Notes"]
