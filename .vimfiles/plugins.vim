" Plugin list
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/neocomplete.vim'
Plugin 'elzr/vim-json'
Plugin 'itchyny/lightline.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'miyakogi/conoline.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mbbill/undotree'
Plugin 'rizzatti/dash.vim'
Plugin 'wlangstroth/vim-racket'
Plugin 'ervandew/supertab'
Plugin 'marijnh/tern_for_vim'

" Deactivated plugins
" Plugin 'leafgarland/typescript-vim'
" Plugin 'burnettk/vim-angular'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'bling/vim-airline'
" Plugin 'davidhalter/jedi-vim'

" End of plugin list

" -----------------------------
" Plugin settings
" -----------------------------
map <C-n> :NERDTreeToggle<CR>

let g:molokai_original=1
let g:rehash256=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" function! AirlineInit()
"     let g:airline_section_a=airline#section#create(['mode',' ','branch'])
"     let g:airline_section_b=airline#section#create_left(['ffenc','hunks','%f'])
"     let g:airline_section_c=airline#section#create(['filetype'])
"     let g:airline_section_x=airline#section#create(['%P'])
"     let g:airline_section_y=airline#section#create(['%B'])
"     let g:airline_section_z=airline#section#create_right(['%l','%c'])
" endfunction

" autocmd VimEnter * call AirlineInit()

au! BufRead,BufNewFile *.json set filetype=json

augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set formatoptions=tcq2l
    autocmd FileType json set textwidth=78 shiftwidth=2
    autocmd FileType json set softtabstop=2 tabstop=8
    autocmd FileType json set expandtab
    autocmd FileType json set foldmethod=syntax
augroup END

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ }

function! LightLineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    endif
endfunction

function! LightLineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return ""
    else
        return ""
    endif
endfunction

function! LightLineFugitive()
    return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

let g:neocomplete#enable_at_startup = 1

" autocmd FileType python setlocal completeopt-=preview
" let g:jedi#setup_py_version = 2.7.10
" let g:jedi#auto_initialization = 0
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"

"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'
