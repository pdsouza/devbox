set nocompatible
filetype off

" Setting up Vundle - the vim plugin bundler
let fresh=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    let fresh=0
endif

" set Vundle runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible.git'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/goyo.vim'
Plugin 'fatih/vim-go'
Plugin 'docker/docker', {'rtp': '/contrib/syntax/vim'}

call vundle#end()

" indentation defaults
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" default text-wrapping
au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.txt setlocal textwidth=80

set t_Co=256

" set up colors
colorscheme 256-grayvim

" gitgutter settings
set updatetime=250 " ms
