local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/luanvim/plugged')

-- Misc
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'sunaku/vim-shortcut'
Plug ('junegunn/fzf', {
    ['do'] = function ()
      vim.call('fzf#install')
    end,
    ['dir'] = [[~/.fzf]]
  })
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug ('scrooloose/nerdtree', {on = {'NERDTreeToggle', 'NERDTreeFind'}})
Plug ('tiagofumo/vim-nerdtree-syntax-highlight', {on = {'NERDTreeToggle', 'NERDTreeFind'}})
Plug 'vimwiki/vimwiki'
Plug 'RRethy/vim-illuminate'

-- Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/git-messenger.vim'

-- Colorscheme
Plug 'morhetz/gruvbox'

vim.call('plug#end')
