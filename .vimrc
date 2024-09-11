" Set line numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Set tabs to spaces
set expandtab
set tabstop=4
set shiftwidth=4

"Improve search functionality and appearance
set ignorecase
set smartcase
set incsearch
set hlsearch

"Plugins
call plug#begin('~/.vim/plugged')

" Add plugins here
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'neovim/nvim-lspconfig'

call plug#end()

"Mappings
" Save with Ctrl-S
nnoremap <C-s> :w<CR>

" Quit with Ctrl-Q
nnoremap <C-q> :q<CR>

"Status Enhancements
set laststatus=2
set statusline=%f\ %y\ %m\ %r\ %=Line:\ %l/%L\ Col:\ %c


