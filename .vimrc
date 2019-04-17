set number
"set cursorline
"set cursorcolumn
"set virtualedit=onemore
"set visualbell
set showmatch
"set laststatus=2
set wildmode=list:longest

syntax on
colorscheme koehler
set background=dark

"tab関連
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

"プラグイン
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif 

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neocomplete.vim'

call neobundle#end()

filetype plugin indent on

if neobundle#is_installed('neocomplete.vim')
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#min_keyword_length = 3
  let g:neocomplete#enable_auto_delimiter = 1
  let g:neocomplete#auto_completion_start_length = 1
  imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
  imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
 endif


"autocmd BufNewFile *.cpp 0r ~/.vim/aaa.cpp
