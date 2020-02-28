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
set list listchars=eol:¬,tab:\▸\-,trail:~,extends:>,precedes:<,space:␣
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set clipboard=unnamedplus

imap fd <esc>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap j gj
nnoremap k gk
nnoremap <C-l> zz

set backspace=indent,eol,start

cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

tnoremap <Esc> <C-\><C-n>

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
