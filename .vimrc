" set the leader key
let mapleader =" "

" turn on filetype options
filetype on
filetype plugin on
filetype indent on

" turn on syntax highlightning
syntax on

" turn on line numbering
set relativenumber

" highlight cursor line
hi CursorLineNr guifg=#ffffff
set cursorline

" set size of shifts and tabs
set shiftwidth=4
set tabstop=4
set expandtab

" no backup files
set nobackup

" don't wrap long lines
set nowrap

" highlight search results
set incsearch

" remap indentation buttons
noremap > >>
noremap < <<

" remap for moving between windows
noremap <leader>d <C-w>l
noremap <leader>a <C-w>h
noremap <leader>s <C-w>j
noremap <leader>w <C-w>k

" remap for closing file
noremap <leader>es :q<CR>

" match system's clipboard with vim's
set clipboard=unnamedplus

call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'RRethy/vim-illuminate'
Plug 'tpope/vim-fugitive'
call plug#end()
silent! colorscheme onedark

" nerdtree configs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" fugitive configs
noremap <leader>gs :Git<CR>
