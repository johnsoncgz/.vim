"-------------------------------------------------
"vim config for johnsoncgz Ver:0.2 date:2015/10/13
"-------------------------------------------------


"-------------------------------------------------
""use github junegunn/vim-plug as plugin tool
""vim-plug config start here
"-------------------------------------------------

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'klen/python-mode'

call plug#end()

"-------------------------------------------------
""vim-plug config end
"-------------------------------------------------


"-------------------------------------------------
"".vimrc config start here
"-------------------------------------------------

" 檔案編碼
set encoding=utf-8

" 編輯喜好設定
syntax on
set nocompatible
set t_Co=256
set nu

if has("autocmd")   " 打开时光标放在上次退出时的位置
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line ("'\"") <= line("$") |
		\   exe "normal g'\"" |
		\ endif
endif

set completeopt=longest,menu " 自动补全菜单

set ruler        " 顯示右下角設定值
set ic           " 設定搜尋忽略大小寫
set ru           " 第幾行第幾個字
set hlsearch     " 設定高亮度顯示搜尋結果
set incsearch    " 在關鍵字還沒完全輸入完畢前就顯示結果
set confirm      " 操作過程有衝突時，以明確的文字來詢問
set cursorline   " 顯示目前的游標位置

set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]

colorscheme molokai

"-------------------------------------------------
"".vimrc config end
"-------------------------------------------------


"-------------------------------------------------
""plug content config start here
"-------------------------------------------------

"config for tomasr/molokai
let g:molokai_original = 1
let g:rehash256 = 1

"config for klen/python-mode
nnoremap <silent> <F5> :NERDTree<CR>
let g:NERDTreeWinPos = "right"

"config for klen/python-mode


"-------------------------------------------------
""plug content config end
"-------------------------------------------------
