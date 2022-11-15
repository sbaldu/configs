let mapleader =" "

set tabstop=3
set shiftwidth=3
noremap > >>
noremap < <<
set number
set autoindent
syntax on
set number relativenumber
set clipboard=unnamedplus
set ttyfast

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'LukeSmithxyz/vimling'

call plug#end()

map <leader>f :Goyo \| set linebreak<CR>

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/coc.vim
