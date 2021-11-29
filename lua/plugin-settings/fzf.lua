-- Set env variable for file searching
vim.env.FZF_DEFAULT_COMMAND = [[rg --files --hidden --no-messages --glob="!{**/*.min.js,**/*.min.css,.git/*}"]]

-- Plugin options
vim.g.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-s'] = 'split',
  ['ctrl-v'] = 'vsplit'
}
