" vim configuration

" Rebind <Leader> Key
let mapleader = ","

filetype plugin indent on
syntax on

" Mouse and backspace
set mouse=a
set bs=2 " Make backspace behave like normal again

" Quick save
noremap <Leader>s :update<CR>
vnoremap <Leader>s <C-C>:update<CR>
inoremap <Leader>s <C-O>:update<CR>

" Quick quit
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows

set nu
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set noerrorbells
set showcmd
set history=1000
set undolevels=1000
