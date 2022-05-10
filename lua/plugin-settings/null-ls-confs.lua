local null_ls = require('null-ls')

local sources = {
  -- Python
  null_ls.builtins.diagnostics.flake8,
  -- null_ls.builtins.formatting.black,
}

null_ls.setup({
  sources = sources,
  on_attach = function (client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end
})
