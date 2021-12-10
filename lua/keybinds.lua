local map = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

vim.g.mapleader = " "

map('t', '<Esc>', [[<C-\><C-N>]], options)
map('n', '<C-l>', ':noh<CR>', options)
map('n', '<leader>to', ":lua require('utils').open_terminal()<CR>", options)

-- nvim-tree.lua
map('n', '<leader>nt', ':NvimTreeToggle<CR>', options)
map('n', '<leader>nf', ':NvimTreeFindFile<CR>', options)
map('n', '<leader>nr', ':NvimTreeRefresh<CR>', options)

-- Startify
map('n', '<leader>bs', ':Startify<CR>', options)

-- Telescope
map('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<CR>", options)
map('n', '<leader>rg', ":lua require('telescope.builtin').live_grep()<CR>", options)
map('n', '<leader>ts', ":lua require('telescope.builtin').treesitter()<CR>", options)
