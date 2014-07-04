"
" super basic settings
"
set nocompatible
set encoding=utf-8

"
" enable pathogen
"
execute pathogen#infect()

"
" colors / theme
"
set t_Co=256 " use 256 colors
let g:solarized_termcolors=256
let g:solarized_contrast="high"
syntax enable
set background=dark " use the dark...
colorscheme solarized " ... solarized theme

"
" language specific settings
"
filetype plugin on
au BufRead,BufNewFile *.md set filetype=markdown " markdown highlighting for .md

"
" visual decorations
"
set laststatus=2 " show status line
set showmode " show the mode we're in
set showcmd " show the command we're typing
set modeline
set ruler " show current line & column in file
set title " show file title in terminal tab
set cursorline " highlight current line

"
" search related
"
set nohlsearch
set incsearch
set ignorecase
set smartcase

"
" Tab, indentation and lines
"
set expandtab " use spaces for tabs
" 4 spaces for a tab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround " round indent to nearest multiple of 4
set nowrap " no line wrapping

"
" start scrolling before cursor hits the edge
" and more scrolling stuff
"
set scrolloff=3
set sidescrolloff=5
set sidescroll=1 " side scroll per character, not screen

"
" tab completion for commands
"
set wildmode=longest,list,full
set wildmenu

"
" more settings
"
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set number " enable line numbering
set colorcolumn=81 " highlight border for col 80 with a line at 81
if has('gui_running')
   set guifont=Source\ Code\ Pro:h11
endif

"
" NERDTree
"
nnoremap <Leader>n :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR> " closes after file selection
nnoremap <Leader>N :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR> " stays open

