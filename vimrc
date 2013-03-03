runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
set nocompatible

set encoding=utf-8
set confirm

set title

filetype plugin indent on

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

set colorcolumn=120

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

set background=dark
colorscheme baycomb

"colorscheme darkblue

if has("gui_running")
	set background=dark
	colorscheme solarized
end

set visualbell           " don't beep
set noerrorbells         " don't beep

let g:CommandTCacheIndexToDisk=1
let g:CommandTMaxFiles=2000000

nmap <silent> <leader>/ :nohlsearch<CR> " ffs

highlight ExtraWhitespace ctermbg=yellow guibg=yellow
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set ruler

au BufRead,BufNewFile *.tpl set filetype=smarty

set laststatus=2

imap jj <Esc>

let g:fugitive_github_domains = ['github.etsycorp.com']
nnoremap <leader>g :Gbrowse<CR>
vnoremap <leader>g :Gbrowse<CR>
