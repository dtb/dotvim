runtime bundle/vim-pathogen/autoload/pathogen.vim

let NERDTreeMapHelp=''

call pathogen#infect()
call pathogen#helptags()

set nocompatible

set encoding=utf-8
set confirm

set title

syntax on
filetype plugin indent on

set nobackup
set noswapfile

set nowrap        " don't wrap lines
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
"set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set expandtab " :( 

set hidden "ffs


set colorcolumn=120

" todo make this trello specific or something
set tabstop=2     " a tab is four spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set expandtab

set background=dark

colorscheme darkblue

if has("gui_running")
	colorscheme baycomb
	highlight ColorColumn guibg=purple4
else
	set t_Co=16
	colorscheme solarized
end

set visualbell           " don't beep
set noerrorbells         " don't beep

set wildignore=*.class,part-*,_SUCCESS,tmp/*,htdocs/assets/dist/*,lib/jobs/jar/*,tmp,*.png

nmap <silent> <leader>/ :nohlsearch<CR> " ffs

highlight ExtraWhitespace ctermbg=yellow guibg=yellow

set ruler

au BufRead,BufNewFile *.tpl set filetype=smarty

set laststatus=2

imap jj <Esc>

let g:fugitive_github_domains = ['github.etsycorp.com']
nnoremap <leader>g :Gbrowse<CR>
vnoremap <leader>g :Gbrowse<CR>

set autoread " automagically reload files when they've been changed outside vim

set ttimeoutlen=50

vnoremap <leader>n :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFind<CR>

set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

" we mustache nerdcommenter to respect templates
let g:NERDCustomDelimiters = {
    \ 'mustache': { 'left': '{{!', 'right': '}}' }
\ }

" dont limit how many files we remember
let g:ctrlp_max_files = 0
let g:ctrlp_map = '<leader>t'
let g:ctrlp_clear_cache_on_exit=0

" Set ctrlp max window size to 40 (fixes ctrlp missing files, sorta)
let g:ctrlp_match_window = 'max:40'

vnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

let g:ctrlp_switch_buffer = 0

let g:ctrlp_custom_ignore = {
  \ 'dir': 'node_modules\|build'
  \}

autocmd BufRead *.tpl call SetTplSettings()
autocmd BufRead *.mustache call SetTplSettings()
autocmd BufRead *.md call SetTplSettings()
autocmd BufRead *.markdown call SetTplSettings()
autocmd BufRead *.markdown call SetTplSettings()
autocmd BufRead *.md call SetTplSettings()
autocmd FileType ruby setlocal shiftwidth=2


function SetTplSettings()
    setlocal wrap linebreak breakindent
    nnoremap <buffer> k gk
    nnoremap <buffer> j gj
    nnoremap <buffer> 0 g0
    nnoremap <buffer> $ g$
endfunction

set suffixesadd=.js
map <leader>s :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
