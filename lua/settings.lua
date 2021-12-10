-- Set global settings (buffer and window settings)
local set = vim.opt

set.number = true
set.relativenumber = true
set.ignorecase = true
set.smartcase = true
set.expandtab = true
set.tabstop = 2
set.shiftwidth = 2
set.cursorline = true
set.completeopt = set.completeopt - 'preview'
set.autoindent = true
set.smartindent = true
set.updatetime = 300
set.inccommand = 'nosplit'
set.title = true
set.undofile = true
set.undodir = vim.fn.expand('~/') .. '.nvim/undo'

-- Default python bin path
vim.g.python3_host_prog = '/usr/bin/python3'

-- Colorscheme
vim.o.termguicolors = true
vim.g.gruvbox_italic = true
vim.cmd [[colorscheme gruvbox]]

-- Autocomplete options
vim.o.completeopt = 'menuone,noselect'

-- Augroups
vim.cmd [[
augroup Terminal
  autocmd!
  autocmd TermOpen * setlocal nonumber norelativenumber | :startinsert
  autocmd TermClose * close
augroup END
]]
augroup END
]]
