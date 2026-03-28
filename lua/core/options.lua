vim.g.mapleader = ' '
vim.g.maplocalleader = ','

local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
opt.updatetime = 200
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.wrap = false
opt.scrolloff = 6
opt.sidescrolloff = 8
opt.ignorecase = true
opt.smartcase = true
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.cursorline = true
opt.undofile = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.spelllang = { 'en_us', 'pt_br' }

vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'always' },
  signs = true,
  underline = true,
  update_in_insert = false,
})
