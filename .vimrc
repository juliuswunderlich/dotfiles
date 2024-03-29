" --------------------------------------------------------
"  VIM Settings
" --------------------------------------------------------
" Don't try to be vi compatible
set nocompatible

" Installs Plug plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'davidhalter/jedi-vim'
Plug 'raimondi/delimitmate'

call plug#end()



" Activate hybrid line numbers
" set nu rnu

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

"stop vim from highlighting spaces weird
let g:go_highlight_trailing_whitespace_error=0
"let g:go_highlight_chan_whitespace_error=0
"let g:go_highlight_space_tab_error=0
"au InsertEnter *.go match goSpaceError /\s\+\%#\@<!$/
"au InsertLeave *.go match goSpaceError /\s\+$/

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","


" Security
set modelines=0

" Show line numbers
set number

"width of document and line mark
"set tw=79
"set colorcolumn=80
"highlight ColorColumn ctermbg=233

" Make line numbers grey
highlight LineNr ctermfg=grey

" Show current cursor position
" set cursorline

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
"set visualbell

" Encoding
set encoding=utf-8

" Whitespace
" visually wraps line
set wrap
" breaks on whitespace instead of random character
set linebreak
" indents after linebreak to aid visibility
set breakindent
" adds char to also visually aid linebreak
set showbreak=ͱ

set autoindent
"set textwidth=79
set formatoptions=tcqrn1
" tab and space size
set tabstop=4
" indentation length when > is used
set shiftwidth=4
" set expandtab converts tabs into spaces, noexpandtab would do the opposite
set expandtab

"make mouse usable 
set mouse=a


" Show invisibles (whitespaces)
":set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
":set list

" Change cursor type on insert mode
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

"Insert closing brackets automatically
"Should be done by plugin: delimitMate

"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}

"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ((     (
"inoremap ()     ()

"inoremap [      []<Left>
"inoremap [<CR>  [<CR>]<Esc>O
"inoremap [[     [
"inoremap []     []

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

"Remap navigation of panes to control + h/j/k/l for direction
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Remap resizing of panes to + and - only
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif    

" Make fj do esc
inoremap fj <Esc>
" Make it work on visual mode as well
xnoremap fj <Esc>


" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
hi StatusLine ctermbg=grey ctermfg=white

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" put https://raw.github.com/altercation/vim-colors-solarized/master/colors/solarized.vim
" in ~/.vim/colors/ and uncomment:
" colorscheme solarized

" color scheme (colorscheme)
colorscheme desert

"-------------------------------
"custom commands
"-------------------------------

" compiles and writes the current latex file
:command Wl w <bar> !pdflatex % 
