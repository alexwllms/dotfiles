" Pathogen package manager
execute pathogen#infect()

" Use Vim settings, rather then Vi settings. This setting must be as early as possible, as it has side effects.
set nocompatible

let mapleader = ","

:nnoremap <leader>w :w<Return>
:nnoremap <leader>q :q<Return>
:nnoremap <leader>wq :wq<Return>

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set showcmd
set autowrite
set autoread
set ruler
set cursorline

syntax on
colorscheme tomorrow_night
set background=dark

" Transparent background
highlight Normal ctermbg=none

" Clear the gutter background color
highlight clear SignColumn

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" set all previous tabs to space
:retab

" set line numbers
set number
set numberwidth=5

highlight CursorLineNr ctermfg=yellow guifg=yellow

" display excess whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set splitbelow
set splitright

" disable the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" set incsearch
:set incsearch

" highlight the selected text in a search
:set hlsearch

" Clear last search highlighting
nnoremap <cr> :noh<CR><CR>:<backspace>

" turn off highlighting matching parens
" :let loaded_matchparen = 1

" use the system clipboard
set clipboard=unnamed

autocmd FileType scss set iskeyword+=-

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Exclude files from Vim and CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.scssc
