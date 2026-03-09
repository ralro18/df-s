" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Load an indent file for the detected file type.
filetype indent on
" Turn syntax highlighting on.
syntax on
" Add numbers to each line on the left-hand side.
set number
set encoding=utf-8
set termguicolors
set bg=dark
set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set noshowmode
set noruler
set laststatus=0
set noshowcmd
colorscheme vim
autocmd BufRead,BufNewFile *.ms,*.me set filetype=groff
autocmd BufRead,BufNewFile *.mse set filetype=nroff
autocmd BufRead,BufNewFile *.md set filetype=markdown
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
hi CursorLine cterm=NONE ctermbg=darkgray guibg=#2e2e2e
" Use highlighting when doing a search.
set hlsearch
" Remove background so its transparent like the terminal.
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
" test for quick spell correction
let mapleader = ' '
nnoremap <leader>z z=
nnoremap <leader>n ]s
nnoremap <leader>m [s
" Accept the first suggestion instantly
nnoremap <leader>1 1z=
" Add/remove the word to/from dictionary
nnoremap <leader>a zg
