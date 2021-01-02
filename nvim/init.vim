if !exists('g:vscode')

"""""""""""""""""""""""""""""""""""""""
" == Plugins ==
"""""""""""""""""""""""""""""""""""""""

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'dark'

Plug 'junegunn/fzf', { 'dir': '$XDG_DATA_HOME/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
map <Space><Space> :Files<CR>

Plug 'jiangmiao/auto-pairs'

call plug#end()

"""""""""""""""""""""""""""""""""""""""
" == General ==
"""""""""""""""""""""""""""""""""""""""

" Number of lines to remember
set history=500

" Enable filetype detection
filetype plugin on
filetype indent on

" Hide buffers when abandoned
set hidden

"""""""""""""""""""""""""""""""""""""""
" == User interface ==
"""""""""""""""""""""""""""""""""""""""

" Enable the wild menu while autocompleting commands with <Tab>
set wildmenu

" Current cursor position
set ruler

" Command bar height
set cmdheight=1

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Jump to search result while typing
set incsearch

" Don't redraw while executing macros
set lazyredraw

" Enable regular expressions
set magic

" Highlight matching brackets
set showmatch

" Turn off error sounds
set noerrorbells
set novisualbell

" Turn on relative line numbers
set number
set relativenumber

" Allow mouse usage
set mouse=a

"""""""""""""""""""""""""""""""""""""""
" == Theming ==
"""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Set color scheme
set background=dark

" Set encoding and standard file type
set encoding=utf8
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""
" == Spacing ==
"""""""""""""""""""""""""""""""""""""""

" Use tabs instead of spaces
set noexpandtab

endif
