set nocompatible

call plug#begin('~/.vim/plugged')
"Plugin 'tpope/vim-sensible.git'
Plug 'scrooloose/nerdtree'
"Plugin 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
"Plugin 'fatih/vim-go'
"Plugin 'vim-airline/vim-airline'
"Plugin 'ekalinin/Dockerfile.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
" lang support
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-highlight'
" colorschemes
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'liuchengxu/space-vim-dark'
call plug#end()

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2

" indentation defaults
"set tabstop=4
"set shiftwidth=4
set expandtab

" default text-wrapping
"au BufRead,BufNewFile *.md setlocal textwidth=80
"au BufRead,BufNewFile *.txt setlocal textwidth=80

" set up colors
 if (has("termguicolors"))
   set termguicolors
 endif
"if exists('+termguicolors')
"  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"  set termguicolors
"endif
"set background=dark

color onedark
" fix weird line number colors
hi LineNr ctermbg=NONE guibg=NONE

" gitgutter settings
set updatetime=250 " ms

set number

set noshowmode
set statusline=%=\ %l:%c%V\ %f\ %m
