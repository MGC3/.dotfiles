set nocompatible      " get rid of Vi compatibility mode
filetype off          " temporarily disable for vundle

" =============== Vundle ===============

set rtp+=~/.vim/bundle/Vundle.vim " set runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'whatyouhide/vim-gotham'

call vundle#end()                 " end vundle 

" ============== General Config ===============

filetype plugin indent on " turn on filetype detection, plugin, and indent
syntax on                 " enable syntax highlighting
colorscheme gotham

set autoindent        " autoindent
set cursorline        " highlight current line
set hls is            " highlight all search pattern matches
set laststatus=2      " need for vim-airline to show
set nu                " display line numbers
set ruler             " show row/column info along bottom
set shiftwidth=2      " indent/outdent by 2 columns
set smartindent       " indents smartly
set tabstop=2         " tab spacing

:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " press space to turn off highlighting and clear any message displayed
