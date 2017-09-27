set nocompatible	" required
filetype off		" required

" set the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here

Plugin 'tmhedberg/SimpylFold'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'nightsense/seabird'
Bundle 'Valloric/YouCompleteMe'

" All plugins added before this line

call vundle#end()		" required
filetype plugin indent on	" required

set encoding=utf-8
let python_highlight_all=1
syntax on
colorscheme petrel
set nu
set laststatus=2
runtime plugin/matchparen.vim
DoMatchParen

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Folding keymap
nnoremap <space> za

" Show doctstrings, simpylfold
let g:SimpylFold_docstring_preview=1

" Python tabbing
au BufNewFile,BufRead *.py :
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |

" Fullstack tabbing
au BufNewFile,BufRead *.js,*.html,*.css :
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

" YCM code completion settings
let g:ycm_server_python_interpreter='/usr/local/bin/python'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python venv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Ignore pyc files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$']

" airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
