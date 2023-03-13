let mapleader =" "

set tabstop=4
set shiftwidth=2
noremap > >>
noremap < <<
set number
set autoindent
syntax on
set number relativenumber
set clipboard=unnamedplus
set ttyfast
hi CursorLineNr guifg=#ffffff
set cursorline
set cursorlineopt=number

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'LukeSmithxyz/vimling'
Plug 'https://github.com/akinsho/bufferline.nvim'
Plug 'https://github.com/RRethy/vim-illuminate'
Plug 'https://github.com/dkarter/bullets.vim'
Plug 'https://github.com/preservim/tagbar'

call plug#end()

map <leader>f :Goyo \| set linebreak<CR>
nmap <F1> :TagbarToggle<CR>

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/coc.vim
