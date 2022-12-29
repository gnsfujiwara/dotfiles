local nls_ok, null_ls = pcall(require, 'null-ls')
if not nls_ok then
  return
end

local mason_null_ls_ok, mason_null_ls = pcall(require, 'mason-null-ls')
if not mason_null_ls_ok then
  return
end

-- Sources list
local sources = {
  'stylua',
}

-- mason-null-ls setup
mason_null_ls.setup({
  ensure_installed = sources,
})

mason_null_ls.setup_handlers({
  function(source_name, methods)
    require 'mason-null-ls.automatic_setup'(source_name, methods)
  end,
})

-- null-ls.nvim setup
null_ls.setup({
  on_attach = require('lsp.handlers').on_attach,
})
