set nocompatible
filetype off

" Setting up Vundle - the vim plugin bundler

let fresh=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let fresh=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle

Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub

Bundle 'tpope/vim-sensible.git'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree.git'

" vim-scripts repos

" non-GitHub repos

" Git repos on local machine

" Bundle init if on fresh machine
if fresh == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

filetype plugin indent on

set t_Co=256

" set up colors
colorscheme gruvbox
set background=dark
