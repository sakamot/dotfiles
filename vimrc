"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "インデントをスペース4つ分に設定
set smartindent "オートインデント

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"netrwは常にtree view
let g:netrw_liststyle = 3
"CVSと.で始まるファイルは表示しない
let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
"'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1

set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab

"タブ、空白、改行の可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set cursorline " カーソルラインをハイライト
set cursorcolumn " 縦方向のハイライト

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
nnoremap <esc><esc> :noh<CR>

"全角スペースをハイライト表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
augroup ZenkakuSpace
  autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
call ZenkakuSpace()
endif

syntax enable


"ファイルタイプ別のプラグイン・インデントを有効にする
filetype plugin indent on

" =====================================================
"" dein
" -----------------------------------------------------
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', { 'build': 'make' })

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')

call dein#add('ujihisa/unite-colorscheme')
call dein#add('chriskempson/vim-tomorrow-theme')
call dein#add('w0ng/vim-hybrid')

call dein#add('tpope/vim-surround')
call dein#add('Yggdroot/indentLine')
call dein#add('mattn/emmet-vim')
call dein#add('gko/vim-coloresque')
call dein#add('tyru/open-browser.vim')
call dein#add('tpope/vim-endwise')

call dein#end()

"=======================================================
"" colorscheme
" ------------------------------------------------------
syntax on
set background=dark
if ($ft=='ruby')
  colorscheme Tomorrow-Night
else
  colorscheme hybrid
endif
