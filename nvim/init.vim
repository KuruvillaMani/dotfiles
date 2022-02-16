set number relativenumber

set cursorline
"set cursorcolumn

set visualbell
set showcmd
set showmatch
set nocompatible
set clipboard=unnamedplus
set ignorecase smartcase
set noshowmode

set expandtab
set tabstop=4
set shiftwidth=4

filetype plugin on

syntax enable
"syntax on

" vim-plug plugins
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'arcticicestudio/nord-vim'

Plug 'itchyny/lightline.vim'

Plug 'vimwiki/vimwiki', { 'on': 'VIMwikitoggle' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" Compile latex documents on write
"au BufWritePost *.tex !st -e latexmk -pdf %:p &
au BufWritePost *.tex silent! !st -e latexmk -pdf %:p &
"au BufWritePost *.tex silent! latexmk -pdf %:p &

" New Tab
nnoremap <C-t> :tabnew<CR>

"Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
