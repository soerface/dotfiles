" ==========================================================
" Pathogen - Allows us to organize our vim plugins
" ==========================================================
" Load pathogen with docs for all plugins
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on

colorscheme custom

let mapleader=","
nmap <leader>sj :set syntax=htmljinja<CR>
nmap <leader>sd :set syntax=htmldjango<CR>

set nocompatible
set colorcolumn=80
set hlsearch
set number

set nobackup
set nowritebackup
set noswapfile

set incsearch
set gdefault
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set autoindent
set ignorecase
set smartcase
" default clipboard = system clipboard
set clipboard=unnamedplus

set wildmode=longest,list,full
set wildmenu

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
:iabbrev </ </<C-X><C-O>

" indentation for several filetypes
autocmd FileType html setlocal shiftwidth=2 tabstop=4 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=4 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=4 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=4 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=4 softtabstop=2
autocmd FileType rst setlocal shiftwidth=3 tabstop=6 softtabstop=3

" highlight trailing spaces (not for the line which is currently edited)
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
au BufWinEnter * match Error / \+$/
au InsertEnter * match Error / \+\%#\@<!$/
au InsertLeave * match Error / \+$/

" change indentation to not loose selection after moving block
vnoremap < <gv
vnoremap > >gv

" Navigating between splits without w and with neo2 layout
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l
" create directories if they dont exist on saving a file
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p ".shellescape(expand('%:h'), 1) | redraw! | endif
augroup END
"
