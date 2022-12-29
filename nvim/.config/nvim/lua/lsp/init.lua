local lspcfg_ok, _ = pcall(require, 'lspconfig')
if not lspcfg_ok then
  return
end

require 'lsp.config'
require 'lsp.null_ls'
require('lsp.handlers').setup()
