let mapleader =" "

set tabstop=4
set shiftwidth=2
noremap > >>
noremap < <<
set number
set autoindent
syntax on
set number relativenumber
set ttyfast

" Match the system's clipboard with vim's
set clipboard=unnamedplus

" Highlight the cursor line number
hi CursorLineNr guifg=#ffffff
set cursorline
set cursorlineopt=number

call plug#begin()
" Aestetics for vim
Plug 'https://github.com/vim-airline/vim-airline'
" Plugin for file system exploration
Plug 'https://github.com/preservim/nerdtree'
" Icons for nerdtree
Plug 'ryanoasis/vim-devicons'
" Plugin useful for easily commenting lines
Plug 'https://github.com/tpope/vim-commentary'
" Plugin to run terminal commands from vim
Plug 'https://github.com/tc50cal/vim-terminal'
" Vscode-like completion for every language
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
" Onedark theme
Plug 'joshdick/onedark.vim'
" Moves text to the center of the window 
Plug 'junegunn/goyo.vim'
" Ease the use of git from within vim
Plug 'jreybert/vimagit'
" Plugin for special characters
Plug 'LukeSmithxyz/vimling'
" Plugin for bufferlines
Plug 'https://github.com/akinsho/bufferline.nvim'
" Illuminates repeated words
Plug 'https://github.com/RRethy/vim-illuminate'
" Plugin for bulletting lists in text files
Plug 'https://github.com/dkarter/bullets.vim'
" Tagbar for quickly navigating through file
Plug 'https://github.com/preservim/tagbar'

call plug#end()

map <leader>f :Goyo \| set linebreak<CR>
" Press F1 to open/close the tagbar
nmap <F1> :TagbarToggle<CR>

source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/plug-config/coc.vim
