require('telescope').setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim"
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
    }
  },
  pickers = {
    find_files = {
      find_command = {
        "rg",
        "--files",
        "--smart-case",
        "--ignore",
        "--hidden",
        "--glob",
        [[!{**/*.min.js,**/*.min.css,.git/*}]]
      }
    }
  }
})

require('telescope').load_extension('fzf')
