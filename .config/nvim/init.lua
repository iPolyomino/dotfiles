-- file setting
vim.opt.fenc='utf-8'
vim.opt.fileencodings='utf-8,euc-jp,sjis'
vim.opt.fileformats='unix,mac,dos'
vim.opt.backup=false
vim.opt.swapfile=false
vim.opt.autoread=true
vim.opt.hidden=true

-- display setting
vim.opt.showcmd=true
vim.opt.number=true
vim.opt.relativenumber=true
vim.opt.ruler=true
vim.opt.wrap=true
vim.opt.cursorline=true
vim.opt.cursorcolumn=true
vim.opt.virtualedit='onemore'
vim.opt.smartindent=true
vim.opt.visualbell=true
vim.opt.showmatch=true
vim.opt.laststatus=2
vim.opt.wildmode='longest,list,full'
vim.opt.wildmenu=true

-- search settings
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.incsearch=true
vim.opt.wrapscan=true
vim.opt.hlsearch=true

-- editing setup
vim.opt.list=true
vim.opt.listchars='tab:▸-,trail:~'
vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.expandtab=true
vim.opt.autoindent=true
vim.opt.clipboard='unnamedplus'
vim.opt.backspace='indent,eol,start'

vim.g.mapleader=' '

vim.api.nvim_set_keymap('n', 'j', 'gj', {noremap = true})
vim.api.nvim_set_keymap('n', 'k', 'gk', {noremap = true})
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':set nohlsearch!<CR>', {})

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'neovim/nvim-lspconfig',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/vim-vsnip',
  'jiangmiao/auto-pairs',
  'scrooloose/nerdtree',
  'itchyny/lightline.vim',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'mattn/emmet-vim',
})

require('mason').setup()
require('mason-lspconfig').setup_handlers({ function(server)
  local opt = {
    on_attach = function(client, bufnr)
      local opts = { noremap=true, silent=true }
      vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      vim.cmd 'autocmd BufWritePre * lua vim.lsp.buf.format()'
    end,
    capabilities = require('cmp_nvim_lsp').default_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )
  }
  require('lspconfig')[server].setup(opt)
end })

local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn['vsnip#anonymous'](args.body)
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<TAB>'] = cmp.mapping.select_next_item(),
    ['<C-l>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = true },
  }),
  experimental = {
    ghost_text = true,
  },
})

vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader><Space>', ':FZF<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>f', ':FZF ~<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>F', ':FZF /<CR>', {noremap = true})
