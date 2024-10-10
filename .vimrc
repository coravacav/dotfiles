" ================================
" Leader Key Configuration
" ================================

" Set the leader key to space
let mapleader = " "

" ================================
" Key Mappings
" ================================

" --- Window Movement Key Removals ---
" Remove default window movement keys
nnoremap <C-W>j <Nop> " Remove j window
nnoremap <C-W>h <Nop> " Remove h window
nnoremap <C-W>l <Nop> " Remove l window
nnoremap <C-W>k <Nop> " Remove k window

" --- Custom Window Navigation ---
" Move to up window
nnoremap <C-W><C-Down> <C-W>j
" Move to left window
nnoremap <C-W><C-Left> <C-W>h
" Move to right window
nnoremap <C-W><C-Right> <C-W>l
" Move to down window
nnoremap <C-W><C-Up> <C-W>k
" Move to next window
nnoremap <C-W><C-W> <C-W><C-W>

" --- Window Resize Key Remappings ---
" Decrease vertical height
nnoremap <leader>wdh <C-W>-
" Decrease horizontal width
nnoremap <leader>wdh <C-W><
" Increase horizontal width
nnoremap <leader>wih <C-W>>
" Increase vertical height
nnoremap <leader>wiv <C-W>+

" --- Window Movement with Custom Keys ---
" Move window up
nnoremap <leader>wm<Up> <C-W>J
" Move window left
nnoremap <leader>wm<Left> <C-W>H
" Move window right
nnoremap <leader>wm<Right> <C-W>L
" Move window down
nnoremap <leader>wm<Down> <C-W>K

" --- Line Movement ---
" Move selected lines up in visual mode
vnoremap <A-Up> :m '<-2<CR>gv=gv
" Move selected lines down in visual mode
vnoremap <A-Down> :m '>+1<CR>gv=gv
" --- Append Line Without Moving Cursor ---
nnoremap J mzJ`z

" --- Page Navigation ---
" Insert Mode Page Up
inoremap <PageUp> <Esc><C-U>zz
" Insert Mode Page Down
inoremap <PageDown> <Esc><C-D>zz
" Normal Mode Page Up
nnoremap <PageUp> <C-U>zz
" Normal Mode Page Down
nnoremap <PageDown> <C-D>zz

" --- Remove Default Page Up and Page Down ---
nnoremap <C-U> <Nop>
nnoremap <C-D> <Nop>

" --- Search Behavior ---
" Keep search terms in the middle of the screen when navigating
nnoremap n nzzzv
nnoremap N Nzzzv

" --- Clipboard Operations ---
" Paste without copying in visual mode
xnoremap <leader>p "_dP
" Copy to system clipboard in normal and visual modes
nnoremap <leader>y "+y
vnoremap <leader>y "+y
" Copy the entire line to system clipboard in normal mode
nnoremap <leader>Y "+Y

" --- Delete Operations ---
" Delete without copying to clipboard in normal and visual modes
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" --- Insert Mode Escape ---
inoremap <C-C> <Esc>

" --- Replace Word Under Cursor ---
nnoremap <leader>r :%s/\<<C-R><C-W>\>/<C-R><C-W>/gI<Left><Left><Left>

" --- Redo Operations ---
" Simplified redo in normal mode
nnoremap U <C-R>
nnoremap <C-R> <Nop>

" --- Discard Search Highlighting ---
" NOTE: The original mapping uses 'keys.unset', which is undefined.
" Assuming it maps to 'uh'. Adjust '<leader>uh' as necessary.

nnoremap <leader>uh :nohl<CR>

" --- Terminal Mode ---
" Exit terminal mode with ESC
tnoremap <Esc> <C-\><C-N>

" --- Quick Close Window ---
nnoremap <leader>q :close<CR>

" ================================
" Editor Settings
" ================================

" Enable filetype detection
filetype on

" Display absolute line numbers
set number

" Tab and indentation settings
set tabstop=4           " Number of spaces that a <Tab> in the file counts for
set softtabstop=4      " Number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=4       " Number of spaces to use for each step of (auto)indent
set expandtab          " Use spaces instead of tabs
set smartindent        " Do smart autoindenting when starting a new line

" Enable confirmation dialogs
set confirm

" Enable auto-indentation
set autoindent

" Allow hidden buffers
set hidden

" Automatically read files when changed externally
set autoread

" Smart tab settings
set smarttab

" Disable lazy redraw for performance
set nolazyredraw

" Set timeout length for mapped sequences (in milliseconds)
set timeoutlen=600

" Set popup menu height
set pumheight=20

" Disable line wrapping
set nowrap

" Set side scroll amount
set sidescroll=10

" Disable swapfile
set noswapfile

" Disable backup files
set nobackup

" Set undo directory
let undodir = expand('$HOME') . '/.vim/undodir'

" Enable persistent undo
set undofile

" Disable search highlighting
set nohlsearch

" Enable incremental search
set incsearch

" Ignore case in search patterns
set ignorecase

" Smart case: override 'ignorecase' if search pattern contains uppercase letters
set smartcase

" Set split behavior
set splitbelow      " New horizontal splits appear below
set splitright      " New vertical splits appear to the right

" Highlight the screen line of the cursor
set cursorline

" Enable true color support
set termguicolors

" Keep cursor 4 lines from the top and bottom of the window
set scrolloff=4

" Always show the sign column
set signcolumn=yes

" Set update time for CursorHold events (in milliseconds)
set updatetime=69

" Highlight column at 120 characters
set colorcolumn=120

" Set completion options
set completeopt=menu,menuone,preview,noselect,noinsert

" Set spell checking language
set spelllang=en_us

:colorscheme jellybeans
