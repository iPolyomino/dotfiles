syntax on

" file setting
set fenc=utf-8
set fileencodings=utf-8,euc-jp,sjis,
set fileformats=unix,mac,dos
set nobackup
set noswapfile
set autoread
set hidden

" display setting
set showcmd
set number
set relativenumber
set ruler
set wrap
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=longest,list,full
set wildmenu

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" editing setup
" set list listchars=eol:¬,tab:\▸\-,trail:~,extends:>,precedes:<,space:␣
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set clipboard=unnamedplus
set backspace=indent,eol,start
set formatoptions+=mM
" set textwidth=80

let mapleader = "\<Space>"

imap fd <esc>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap j gj
nnoremap k gk

nnoremap <silent> [b :bprevios<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

tnoremap <Esc> <C-\><C-n>

if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif

" dein.vim
if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')

let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = expand('~/.config/nvim')

  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
