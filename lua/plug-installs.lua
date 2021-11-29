local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/luanvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug ('junegunn/fzf', {
    -- ['do'] = [[./install --all --no-zsh]],
    ['do'] = function ()
      vim.call('fzf#install')
    end,
    ['dir'] = [[~/.fzf]]
  })
Plug 'junegunn/fzf.vim'

-- Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'
Plug 'sunaku/vim-shortcut'

vim.call('plug#end')
