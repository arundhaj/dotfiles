" vim configuration

" Automatically reload .vimrc
" autocmd! bufwritepost .vimrc source %

" copy and paste
" when pasting large blocks of code into vim, press F2 before pasting.
" At the bottom you should see -- INSERT (paste) --
set pastetoggle=<F2>
set clipboard=unnamed

" Rebind <Leader> Key
let mapleader = ","

" Mouse and backspace
set mouse=a
set bs=2 " Make backspace behave like normal again

" Quick save Ctrl+z
noremap <C-z> :update<CR>
vnoremap <C-z> <C-C>:update<CR>
inoremap <C-z> <C-O>:update<CR>

" Quick quit
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows

" bind Ctrl+<movement> keys to move around the windows 
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" code indendation
vnoremap < <gv
vnoremap > >gv

" Show whitespace
" MUST be inserted BEFORE the colorscheme comand
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -o wombat256mod.vim
" http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

" Showing line numbers and length
set number	" show line number
set tw=79	" width of the document (used by gd)
set nowrap 
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

set history=1000
set undolevels=1000

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" vnoremap <Leader>r :w !python

" Uncategorized commands, categorize it later
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

" Setup Pathogen to manage plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" cd ~/.vim/autoload
" wget https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
call pathogen#infect() 

" =======================================
" Python IDE Setup
" =======================================

" Setting for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

" settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Python folding
" mkdir -p ~/.vim/ftplugin && cd ~/.vim/ftplugin
" wget http://vim.org/scripts/download_script.php?src_id=5492
set nofoldenable
