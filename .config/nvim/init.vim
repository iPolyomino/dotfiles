syntax on

" file setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden

" display setting
set showcmd
set number
set ruler
set wrap
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" editing setup
" set list listchars=eol:¬,tab:\▸\-,trail:~,extends:>,precedes:<,space:␣
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set clipboard=unnamedplus
set backspace=indent,eol,start

imap fd <esc>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap j gj
nnoremap k gk
nnoremap <C-l> zz

" window control settings
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap SJ <C-w>J
nnoremap SK <C-w>K
nnoremap SL <C-w>L
nnoremap SH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

tnoremap <Esc> <C-\><C-n>

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
