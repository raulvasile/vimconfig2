set encoding=utf8
set noswapfile
set ffs=unix,dos,mac
set list 
set listchars=tab:▸\ ,eol:¬

" ---------------------------
" Text, tab and indent related 
" ---------------------------
set expandtab
set smarttab

set shiftwidth=2
set tabstop=2

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" ---------------------------
" Visual mode related 
" ---------------------------
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" ---------------------------
" Moving around, tabs, windows and buffers 
" ---------------------------
map j gj
map k gk

map <space> /
map <c-space> ?

map <silent> <leader><cr> :noh<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>bd :Bclose<cr>

map <leader>ba :1,1000 bd!<cr>

map <leader>tn :tabnew<cr>
map <leader>tp :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

map <leader>te :tabedit <c-r>=expand("%p:h")<cr>/

map <leader>cd :cd %:p:h<cr>:pwd<cr>

try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

autocmd BufReadPost * if line("'\'") > 0 && line("'\'") <= line("$") | exe "normal! g`\"" | endif

set viminfo^=%

" ---------------------------
" Status line 
" ---------------------------
set laststatus=2

" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l
" endif
" ---------------------------
" Editing mappings 
" ---------------------------
map 0 ^

nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" ---------------------------
" Spell checking 
" ---------------------------
map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


" ---------------------------
" Misc 
" ---------------------------
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

map <leader>q :e ~/buffer<cr>

map <leader>pp :setlocal paste!<cr>

" ---------------------------
" Helper function 
" ---------------------------
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction


" General settings
" ---------------------------

" History
set history=700
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Auto read changed file 
set autoread

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

set relativenumber

" Red color for column 80 - no more 80 chars per line
set colorcolumn=80

" ---------------------------
" Vim Interface
" ---------------------------
set so=7

set wildmenu
set wildignore=*.o,*~,*.pyc

set ruler
set cmdheight=2
set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set hlsearch
set incsearch

set lazyredraw

set magic

set showmatch

set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" ---------------------------
" Colors and fonts 
" ---------------------------
syntax enable

if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
endif

set encoding=utf8

set ffs=unix,dos,mac

" ---------------------------
" Text, tab and indent related 
" ---------------------------
set expandtab
set smarttab

set shiftwidth=2
set tabstop=2

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" ---------------------------
" Visual mode related 
" ---------------------------
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" ---------------------------
" Moving around, tabs, windows and buffers 
" ---------------------------
map j gj
map k gk

map <space> /
map <c-space> ?

map <silent> <leader><cr> :noh<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>bd :Bclose<cr>

map <leader>ba :1,1000 bd!<cr>

map <leader>tn :tabnew<cr>
map <leader>tp :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

map <leader>te :tabedit <c-r>=expand("%p:h")<cr>/

map <leader>cd :cd %:p:h<cr>:pwd<cr>

try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

autocmd BufReadPost *
    \ if line("'\'") > 0 && line("'\'") <= line("$") |
    \ exe "normal! g`\"" |
    \ endif

set viminfo^=%

" ---------------------------
" Status line 
" ---------------------------
set laststatus=2

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l

" ---------------------------
" Editing mappings 
" ---------------------------
map 0 ^

nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" ---------------------------
" Spell checking 
" ---------------------------
map <leader>ss :setlocal spell!<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


" ---------------------------
" Misc 
" ---------------------------
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

map <leader>q :e ~/buffer<cr>

map <leader>pp :setlocal paste!<cr>

" ---------------------------
" Helper function 
" ---------------------------
function! HasPaste()
    if &paste
        return 'PASTE MODE '
    en
    return ''
endfunction


