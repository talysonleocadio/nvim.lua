local nvim_api = vim.api
local packer_user_config_group = nvim_api.nvim_create_augroup("PackerUserConfig", {})

nvim_api.nvim_create_autocmd({"BufWritePost"}, {
  group = packer_user_config_group,
  pattern = "init.lua",
  command = "source <afile> | PackerCompile",
})

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'andymass/vim-matchup'

  use {
    'mhinz/vim-startify',
    config = function () require('user.plugins.configs.vim-startify') end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      {'kyazdani42/nvim-web-devicons'},
    },
    config = function () require('user.plugins.configs.nvim-tree') end
  }

  use {
    "LunarVim/bigfile.nvim"
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function () require('user.plugins.configs.lualine') end
  }

  use {
    'vimwiki/vimwiki',
    config = function () require('user.plugins.configs.vimwiki') end
  }

  use 'RRethy/vim-illuminate'
  use 'tpope/vim-fugitive'

  use {
    'airblade/vim-gitgutter',
    branch = 'main'
  }

  use 'rhysd/git-messenger.vim'
  use 'ellisonleao/gruvbox.nvim'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      -- Completion sources
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-calc',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-path',

      -- vscode pictograms for lsp
      'onsails/lspkind-nvim',
      -- Ultisnip comletion source
      'quangnguyen30192/cmp-nvim-ultisnips',
    },
    config = function ()
        require('user.plugins.configs.completions')
    end
  }

  use {
    {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      run = ':MasonUpdate'
    },
    {
      'neovim/nvim-lspconfig',
      config = function ()
        require('user.plugins.configs.lsp')
      end
    }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function () require('user.plugins.configs.nvim-treesitter') end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    },
    config = function () require('user.plugins.configs.telescope') end
  }

  use {
    'windwp/nvim-autopairs',
    config = function () require('user.plugins.configs.nvim-autopairs') end
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    config = function ()
      require('user.plugins.configs.indent-blankline')
    end
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
      'jose-elias-alvarez/nvim-lsp-ts-utils'
    },
    config = function () require('user.plugins.configs.null-ls') end
  }

  use {
    "SirVer/ultisnips",
    requires = "honza/vim-snippets",
    config = function() require('user.plugins.configs.ultisnips') end
  }

  use {
    'editorconfig/editorconfig-vim',
    config = function () require('user.plugins.configs.editorconfig') end
  }

  use {
    "rcarriga/nvim-dap-ui",
    config = function () require ('user.plugins.configs.nvim-dap-ui') end,
    requires = {
      "mfussenegger/nvim-dap",
      config = function () require('user.plugins.configs.nvim-dap') end
    }
  }

  -- use {
  --   'mfussenegger/nvim-dap',
  --   config = function () require('user.plugins.configs.nvim-dap') end
  -- }

  use {
    'iamcco/markdown-preview.nvim',
    run = function () vim.fn["mkdp#util#install"]() end,
    ft = { 'markdown' }
  }

end)
