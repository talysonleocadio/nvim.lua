-- Here all confs for writing plugins (Currently: vim-ditto and vim-pencil)
vim.cmd [[
augroup WritingStuff
  autocmd!
  autocmd FileType markdown,text,vimwiki call pencil#init({'wrap': 'soft'}) | DittoOn
augroup END
]]
