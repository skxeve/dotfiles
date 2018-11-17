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

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

syntax enable
if exists("syntax")
    syntax on
endif
set background=dark
colorscheme darkblue

filetype plugin indent on
