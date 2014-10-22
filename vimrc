syntax on

" size of a hard tabstop
set tabstop=2

" set all previous tabs to space
:retab

" always uses spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=2

" set line numbers
set number

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

" map jj to escape in insert mode only
imap qq <Esc>
