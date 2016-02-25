" ---------------------------
" General settings imported
" ---------------------------
source ~/.vimfiles/general.vim

colorscheme slate

" ---------------------------
" Vundle initialization
" ---------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

source ~/.vimfiles/plugins.vim

call vundle#end()
filetype plugin indent on
