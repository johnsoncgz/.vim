"-------------------------------------------------
"vim config for johnsoncgz
"ver:0.2 date:2015/10/13
"ver:0.3 date:2016/08/09
"use ***github junegunn/vim-plug*** as plugin tool
"-------------------------------------------------

"-------------------------------------------------
"vim-plug config start here
"-------------------------------------------------

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
call plug#end()

"-------------------------------------------------
"vim-plug config end
"-------------------------------------------------

"-------------------------------------------------
".vimrc config start here
"-------------------------------------------------

colorscheme molokai
filetype plugin indent on
syntax on

set completeopt=longest,menu
set confirm
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nocompatible
set number
set ruler
set shiftwidth=4
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
set tabstop=4
set t_Co=256

augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

"-------------------------------------------------
".vimrc config end
"-------------------------------------------------

"-------------------------------------------------
"plug content config start here
"-------------------------------------------------

"config for davidhalter/jedi-vim

"config for tomasr/molokai
let g:molokai_original = 1
let g:rehash256 = 1

"config for scrooloose/nerdtree
nnoremap <silent> <F5> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinPos = "right"

"-------------------------------------------------
"plug content config end
"-------------------------------------------------
