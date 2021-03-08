if !exists('g:vscode')

"""""""""""""""""""""""""""""""""""""""
" == Plugins ==
"""""""""""""""""""""""""""""""""""""""

call plug#begin('$XDG_DATA_HOME/nvim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1

Plug 'mcchrish/nnn.vim'
let g:nnn#set_default_mappings = 0
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'cespare/vim-toml'

Plug 'rust-lang/rust.vim'

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

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

" Automatically execute commands for certain filetypes
autocmd BufWritePost .Xresources silent !xrdb <afile>

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

" Allow mouse usage
set mouse=a

" Allows buffers to be hidden if they've been modified
set hidden

" Open new split panes to right and bottom
set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""""""
" == Theming ==
"""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Set color scheme
colorscheme dracula
set termguicolors

" Set encoding and standard file type
set encoding=utf8
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""
" == Spacing ==
"""""""""""""""""""""""""""""""""""""""

" Use tabs instead of spaces
set noexpandtab
set softtabstop=0
set tabstop=4
set shiftwidth=4

"""""""""""""""""""""""""""""""""""""""
" == Keybinds ==
"""""""""""""""""""""""""""""""""""""""

let mapleader=" "

" Open file browser
map <leader><Space> :NnnPicker<CR>

" Open a new empty buffer
nmap <leader>T :enew<cr>

" Next buffer
nmap <leader>l :bnext<CR>

" Previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer
nmap <leader>bd :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Split vertically and horizontally
nmap <leader>sv :vsp<CR>
nmap <leader>sh :sp<CR>

" Navigate splits with ctrl-[hjkl]
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

endif
