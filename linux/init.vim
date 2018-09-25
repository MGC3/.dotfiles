" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Airline is a plugin that makes the status line look fancier.
" It requires a custom font (with arrows), and is completely optional
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" A more convenient (than default) directory browser for Vim
Plug 'scrooloose/nerdtree'

" Brackets autocompletion
Plug 'jiangmiao/auto-pairs'

" Autocompletion for Python
Plug 'davidhalter/jedi-vim'

" A collection of colorschemes. Doesn't include my favorite one though.
Plug 'flazz/vim-colorschemes'

" Highlights new/mofified/deleted lines in the "gutter"
Plug 'airblade/vim-gitgutter'

" A Vim plugin for all things Go. Supports autocompletion,
" smart code navigation, linting, and much more - but it formats
" for on save so I'm turning it off for now...
" Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()

filetype plugin on

set updatetime=500

" Airline setup
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = "deus"

" Jedi-vim configuration
let g:jedi#show_call_signatures = 1 
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
autocmd FileType python setlocal completeopt-=preview

set nu          " Line numbers on
syntax on       " Syntax highlighting
set hidden      " Hides buffers instead of closing them     
set incsearch   " Highlights search results as you type vs after you press enter
set ignorecase  " Ignore case when searching
set smartcase 
set hlsearch    " Turns search highlighting on
set expandtab   " Expands tabs into spaces
set shiftwidth=2

" Exclude these files from *
set wildignore=*.swp,*.bak,*.pyc,*.class

" Go specific
" stop highlighting whitespace as error
let g:go_highlight_trailing_whitespace_error=0

" Set colorscheme
colorscheme gotham
" Gets rid of annoying line column highlight. Tied to current gotham
" colorscheme
highlight LineNr ctermfg=magenta ctermbg=none

