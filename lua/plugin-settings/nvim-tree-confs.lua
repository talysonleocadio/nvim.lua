vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_icons = {
  git = {
    unstaged = 'M',
    staged = 'S',
    unmerged = 'U',
    renamed = '->',
    untracked = 'T',
    deleted = 'D',
    igonred = 'I'
  }
}

vim.g.nvim_tree_show_icons = {
  folders = 0,
  git = 1,
  files = 1
}

return require('nvim-tree').setup({
  auto_close = true,
  git = {
    ignore = false
  },
  view = {
    width = 25
  },
  filters = {
    dotfiles = true,
    custom = {'.git', 'node_modules'}
  }
})
