hi clear

hi CursorLine term=none cterm=none ctermbg=0 ctermfg=1
hi CursorColumn term=none cterm=none ctermbg=0 ctermfg=1
hi Visual term=reverse cterm=reverse ctermbg=0

"if &term =~ "xterm\\|rxvt"
"  " use an orange cursor in insert mode
"  let &t_SI = "\<Esc>]12;purple\x7"
"  " use a red cursor otherwise
"  let &t_EI = "\<Esc>]12;black\x7"
"  silent !echo -ne "\033]12;black\007"
"  " reset cursor when vim exits
"  autocmd VimLeave * silent !echo -ne "\033]112\007"
"  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
"endif

set cursorline
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
set foldcolumn=4
"set number
set clipboard=unnamedplus

set smarttab	
set shiftwidth=4
set softtabstop=0 noexpandtab
set tabstop=4

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



inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>

map <F5> :! ./make
map <C-n> :set number!<CR>

