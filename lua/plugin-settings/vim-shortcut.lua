vim.cmd [[runtime plugin/shortcut.vim]]

vim.cmd [[
Shortcut 'Show shortcut menu and run chosen shortcut'
  \ noremap <silent> <Space><Space> :Shortcuts<CR>
]]

vim.cmd [[
Shortcut 'Fzf: open file search and go to chosen file'
  \ map <silent> <Space>ff :Files<CR>
]]

vim.cmd [[
Shortcut 'Fzf: open Rg search and go to chosen file with the corresponding pattern'
  \ map <silent> <Space>rg :Rg<CR>
]]

vim.cmd [[
Shortcut 'Vim-plug: install new plugins'
  \ noremap <silent> <Space>pi :PlugInstall<CR>
]]

vim.cmd [[
Shortcut 'Vim-plug: remove unsable plugins'
  \ noremap <silent> <Space>pc :PlugClean<CR>
]]

vim.cmd [[
Shortcut 'Vim-plug: update all plugins plugins'
  \ noremap <silent> <Space>pu :PlugUpdate<CR>
]]

vim.cmd [[
Shortcut 'NERDTree: toggle navigation tree'
  \ noremap <silent> <Space>nt :NERDTreeToggle<CR>
]]

vim.cmd [[
Shortcut 'Startify: go back to main menu'
  \ noremap <silent> <Space>bs :Startify<CR>
]]

vim.cmd [[
Shortcut 'NERDTree: find and open the current file in navigation tree'
  \ noremap <silent> <Space>nf :NERDTreeFind<CR>
]]

vim.cmd [[
Shortcut 'Open terminal'
  \ noremap <silent> <Space>to :call v:lua.require('utils').open_terminal()<CR>
]]
