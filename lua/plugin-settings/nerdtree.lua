-- Closes the editor if the NERDTree is the only window left
vim.cmd [[
augroup CloseNvimIfNERDTreeIsTheOnlyWindowLeft
  autocmd!
  autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
      \ quit | endif
augroup END
]]
