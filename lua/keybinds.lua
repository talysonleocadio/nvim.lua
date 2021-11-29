local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "

map('t', '<Esc>', [[<C-\><C-N>]], {noremap = true, silent = true})
map('n', '<C-l>', ':noh<CR>', {noremap = true})
