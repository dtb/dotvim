runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() 
set nocompatible

set nobackup
set noswapfile

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set hidden "ffs

set wildignore=*.png

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

colorscheme darkblue

if has("gui_running")
	set background=dark
	colorscheme solarized
end

set visualbell           " don't beep
set noerrorbells         " don't beep

let g:CommandTCacheIndexToDisk=1

nmap <silent> <leader>/ :nohlsearch<CR> " ffs
