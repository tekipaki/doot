"""""""""""""""""""""""""""""""""""""""""
"__     ___   _ _   _ ____  _     _____ "
"\ \   / / | | | \ | |  _ \| |   | ____|"
" \ \ / /| | | |  \| | | | | |   |  _|  "
"  \ V / | |_| | |\  | |_| | |___| |___ "
"   \_/   \___/|_| \_|____/|_____|_____|"
"                                       "
"""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'preservim/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


""""""""""""""""""""""""""""""""""""""""
" __  ____   __  ____  _   _ ___ _____ "
"|  \/  \ \ / / / ___|| | | |_ _|_   _|"
"| |\/| |\ V /  \___ \| |_| || |  | |  "
"| |  | | | |    ___) |  _  || |  | |  "
"|_|  |_| |_|   |____/|_| |_|___| |_|  "
""""""""""""""""""""""""""""""""""""""""

" INDENTATION
let g:indentLine_enabled = 1
"let g:indentLine_setColors = 0
let g:indentLine_bgcolor_term = 202
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
set backspace=indent,eol,start

" MOUSE
set ttymouse=xterm2
set mouse=a
"set ttyfast
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" NERD TREE
map <C-b> :NERDTreeToggle<cr>
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set completeopt-=preview

"set rightleft
hi clear

" STANDARD COLORS
hi Normal 						ctermbg=none
hi Visual 						cterm=reverse
hi CursorLine 				cterm=underline
hi CmdLineEnter 											ctermfg=7 ctermbg=8
hi CmdLine 														ctermfg=7 ctermbg=8
hi QuickFixLine 			cterm=reverse
hi Search 														ctermfg=7 ctermbg=8
hi Pmenu 															ctermfg=7 ctermbg=4
hi PmenuSel 													ctermfg=7 ctermbg=6
hi WildMenu 					cterm=none 			ctermfg=7 ctermbg=15
hi FoldColumn 				cterm=none

" WARNINGS
hi WarningMsg 				cterm=none 			ctermfg=0 ctermbg=2
hi YcmWarningLine 		cterm=none
hi YcmWarningSign 		cterm=none 			ctermfg=0 ctermbg=2
hi YcmWarningSection 	cterm=none 			ctermfg=0 ctermbg=2
let g:ycm_warning_symbol = ':/'

" ERRORS
hi ErrorMsg 					cterm=none 			ctermfg=7 ctermbg=8
hi YcmErrorLine 			cterm=none
hi YcmErrorSign 			cterm=none 			ctermfg=7 ctermbg=1
hi YcmErrorSection 		cterm=none 			ctermfg=7 ctermbg=1
let g:ycm_error_symbol = ':('


":set listchars=tab:\|\
":set list
"set cursorline
"set cursorcolumn

filetype plugin on
filetype on
filetype indent on
syntax on
set encoding=utf-8


autocmd BufRead */polybar/config set syntax=dosini
autocmd FileType asm setlocal shiftwidth=8 softtabstop=0 tabstop=8 smarttab noexpandtab

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif


set showmatch
"set foldcolumn=8
set number
set clipboard=unnamedplus

set smarttab	
set shiftwidth=2
set softtabstop=0 noexpandtab
set tabstop=2

set wildmode=longest,list,full
set wildmenu
set lazyredraw
set t_Co=16
set noerrorbells
set visualbell
set t_vb=
set cul
set hlsearch incsearch ignorecase smartcase

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"inoremap { {<CR>}<Esc>ko<tab>
nnoremap <C-j> : tabprevious<CR>
nnoremap <C-k> : tabnext<CR>
nnoremap <C-u> : q<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
nnoremap <C-h> :set hlsearch!<CR>

function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction



"inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>

map <F5> :! ./make
map <C-n> :set number!<CR>

