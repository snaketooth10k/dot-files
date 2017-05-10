set nocompatible	" required
filetype off		" required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

" All plugins added before this line

call vundle#end()		" required
filetype plugin indent on	" required

set encoding=utf-8

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Folding keymap
nnoremap <space> za

" Show doctstrings, simpylfold
let g:SimpylFold_docstring_preview=1

" Python tabbing
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Fullstack tabbing
au BufNewFile,BufRead *.js,*.html,*.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

" Whitespace Flagging
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhiteSpace /\s\+$/


