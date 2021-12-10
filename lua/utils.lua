local M = {}

function M.open_terminal()
  vim.o.splitright = true
  vim.o.splitbelow = true

  if (vim.fn.executable('zsh') == 1) then
    vim.cmd [[split term://zsh]]
  else
    vim.cmd [[split term://bash]]
  end

  vim.cmd [[resize 20]]
end

return M
