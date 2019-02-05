set encoding=utf-8

set fileformats=unix,dos,mac
set vb t_vb=
set backspace=indent,eol,start

set ignorecase
set title
set number
set showcmd
set laststatus=2
set showmatch
set matchtime=3
set autoindent

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax enable
if exists("syntax")
    syntax on
endif
set background=dark
colorscheme darkblue

filetype plugin indent on

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go
call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
