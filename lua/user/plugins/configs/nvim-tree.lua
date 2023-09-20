return require('nvim-tree').setup({
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
