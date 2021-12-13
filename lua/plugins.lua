vim.cmd([[
  augroup PackerUserConfig
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'andymass/vim-matchup'
  use {
    'mhinz/vim-startify',
    config = function () require('plugin-settings.vim-startify-confs') end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      {'kyazdani42/nvim-web-devicons'},
    },
    config = function () require('plugin-settings.nvim-tree-confs') end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function () require('plugin-settings.lualine-confs') end
  }

  use {
    'vimwiki/vimwiki',
    config = function () require('plugin-settings.vimwiki-confs') end
  }
  use 'RRethy/vim-illuminate'

  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'rhysd/git-messenger.vim'

  use 'morhetz/gruvbox'

  use {
    'neovim/nvim-lspconfig',
    requires = {
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'onsails/lspkind-nvim',
      'quangnguyen30192/cmp-nvim-ultisnips'
    },
    config = function () require('plugin-settings.lsp-confs') end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function () require('plugin-settings.nvim-treesitter-confs') end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    },
    config = function () require('plugin-settings.telescope-confs') end
  }

  use {
    'windwp/nvim-autopairs',
    config = function () require('plugin-settings.nvim-autopairs-confs') end
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function () require('plugin-settings.indent-blankline-confs') end
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig'},
    config = function () require('plugin-settings.null-ls-confs') end
  }

  use({
    "SirVer/ultisnips",
    requires = "honza/vim-snippets",
    config = function()
      require('plugin-settings.ultisnips-confs')
    end,
  })

end)
