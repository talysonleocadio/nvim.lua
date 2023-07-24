-- Set global settings (buffer and window settings)
local set = vim.opt

set.autoindent = true
set.background = "dark"
set.completeopt = "menuone,noinsert,noselect"
set.cursorline = true
set.expandtab = true
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldmethod = "manual"
set.hidden = true
set.ignorecase = true
set.inccommand = 'nosplit'
set.number = true
set.relativenumber = true
set.shiftwidth = 2
set.smartcase = true
set.smartindent = true
set.swapfile = false
set.tabstop = 2
set.termguicolors = true
set.title = true
set.updatetime = 300
set.undodir = vim.fn.expand('~/') .. '.nvim/undo'
set.undofile = true

-- Default python bin path
vim.g.python3_host_prog = '/usr/bin/python3'

-- Colorscheme
vim.g.gruvbox_italic = true
vim.cmd([[
  filetype plugin indent on
  syntax on
  colorscheme gruvbox
]])

-- Augroups
local terminal_group = vim.api.nvim_create_augroup("Terminal", {})

vim.api.nvim_create_autocmd({"TermOpen"}, {
  group = terminal_group,
  pattern = "*",
  command = "setlocal nonumber norelativenumber | :startinsert",
})

vim.api.nvim_create_autocmd({"TermClose"}, {
  group = terminal_group,
  pattern = "*",
  command = "close"
})

local clear_trailing_spaces_group = vim.api.nvim_create_augroup("ClearTrailingSpaces", {})

vim.api.nvim_create_autocmd({"BufWrite"}, {
  group = clear_trailing_spaces_group,
  pattern = "*",
  command = [[%s/\s\+$//e]]
})
