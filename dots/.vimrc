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

" enable ~/.vim/filetype.vim ~/.vim/indent/
filetype plugin indent on

" show invisible chars
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" execute :PlugInstall
call plug#begin()

" git from vim plugin
Plug 'tpope/vim-fugitive'

" easy edit surround
Plug 'tpope/vim-surround'

" golang plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" javascript plugin - support indent, highlight
Plug 'pangloss/vim-javascript'

" async lint execute
Plug 'w0rp/ale'

call plug#end()


" vim-go
let g:go_fmt_command = "goimports"

