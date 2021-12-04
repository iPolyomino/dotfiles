syntax on

" file setting
set fenc=utf-8
set fileencodings=utf-8,euc-jp,sjis
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
" set list listchars=eol:¬,tab:\▸\-,trail:~,extends:>,precedes:<,space:␣
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set clipboard=unnamedplus

imap fd <esc>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap j gj
nnoremap k gk

set backspace=indent,eol,start

cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

tnoremap <Esc> <C-\><C-n>
