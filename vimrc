set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Bundle 'JulesWang/css.vim'
Plugin 'gmarik/Vundle.vim'

" add plugins here
Bundle 'cakebaker/scss-syntax.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

" Set the leader key
let mapleader = ","

" Shortcuts
:nnoremap <leader>w :w<Return>
:nnoremap <leader>q :q<Return>
:nnoremap <leader>wq :wq<Return>

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile 
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
" set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoread      " Read changes to the file immediately

" turn on syntax highlighting
syntax on

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

" display excess whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

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

" remap  escape in insert mode only
imap <tab> <Esc>
imap jk <Esc>

" use the system clipboard
set clipboard=unnamed

autocmd FileType scss set iskeyword+=-

" set the tab title to the file name
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title
