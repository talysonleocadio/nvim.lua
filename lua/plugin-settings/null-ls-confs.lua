local null_ls = require('null-ls')

local sources = {
  -- Typescript
  null_ls.builtins.formatting.eslint,
  null_ls.builtins.diagnostics.eslint,

  -- Python
  null_ls.builtins.diagnostics.flake8,
  null_ls.builtins.formatting.black,

  -- JSON
  null_ls.builtins.formatting.json_tool.with({
    extra_args = {"--indent=2"}
  })
}

null_ls.setup({
  sources = sources,
  on_attach = function (client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end
})
