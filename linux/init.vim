" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Airline is a plugin that makes the status line look fancier.
" It requires a custom font (with arrows), and is completely optional
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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

" Later in the config I'll bind this plugin to "gc"
" Typing "gc" will comment out a block or line of code in any language
Plug 'tpope/vim-commentary'

" A Git plugin with a crazy useful command :GitBlame
" Don't wait, blame someone else!
Plug 'tpope/vim-fugitive'

" A Vim plugin for all things Go. Supports autocompletion,
" smart code navigation, linting, and much more
Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()

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

" Turn on line numbers
set nu
" Turn on syntax highlighting
syntax on
" It hides buffers instead of closing them.
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden
" Highlights search results as you type vs after you press Enter
set incsearch
" Ignore case when searching
set ignorecase
set smartcase 
" Turns search highlighting on
set hlsearch
" Expands TABs into whitespaces
set expandtab
set shiftwidth=2
" Exclude these files from *
set wildignore=*.swp,*.bak,*.pyc,*.class
" Turn on TrueColor
" set termguicolors

colorscheme gotham
