local servers = {'pyright', 'lua_ls'}

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = servers
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = function (client)
      client.server_capabilities.documentFormattingProvider = false
      client.server_capabilities.documentRangeFormattingProvider = false
    end,
    capabilities = capabilities
  })
end

