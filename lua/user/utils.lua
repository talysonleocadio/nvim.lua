local M = {}

local vim_options = vim.o
local vim_cmd = vim.cmd
local vim_functions = vim.fn
local vim_api = vim.api

function M.open_terminal()
  vim_options.splitright = true
  vim_options.splitbelow = true

  if (vim_functions.executable('zsh') == 1) then
    vim_cmd [[split term://zsh]]
  else
    vim_cmd [[split term://bash]]
  end

  vim_cmd [[resize 20]]
end

function M.replace_termcodes(string)
  return vim_api.nvim_replace_termcodes(string, true, true, true)
end

return M
