-- vim.g.nvim_tree_icons = {
--   git = {
--     unstaged = 'M',
--     staged = 'S',
--     unmerged = 'U',
--     renamed = '->',
--     untracked = 'T',
--     deleted = 'D',
--     ignored = 'I'
--   }
-- }

-- vim.g.nvim_tree_show_icons = {
--   folders = 0,
--   git = 1,
--   files = 1
-- }

return require('nvim-tree').setup({
  -- nvim_tree_show_icons = {
  --   folders = 0,
  --   git = 1,
  --   files = 1
  -- },
  git = {
    ignore = false
  },
  view = {
    width = 25
  },
  filters = {
    dotfiles = true,
    custom = {'.git', 'node_modules'}
  },
  renderer = {
    indent_markers = {
      enable = true
    },
    icons = {
      glyphs = {
        git = {
          unstaged = 'M',
          staged = 'S',
          unmerged = 'U',
          renamed = '->',
          untracked = 'T',
          deleted = 'D',
          ignored = 'I'
        }
      },
      show = {
        file = true,
        git = true,
        folder = false
      }
    }
  }
})
