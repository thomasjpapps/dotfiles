call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()
let mapleader=","

syntax enable

set clipboard=unnamed

set tabstop=4
set shiftwidth=4
set expandtab

set cursorline

autocmd vimenter * ++nested colorscheme gruvbox

set splitbelow
set splitright

set hlsearch

set number

set spelllang=en
set spell
