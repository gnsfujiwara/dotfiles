--[[

gnsfujiwara's neovim configuration

Author: Gustavo Vinícios de Souza <gnsfujiwara@disroot.org>
This file is not part of neovim.
This file is free software.

--]]

-- impatient.nvim setup
local impatient_ok, impatient = pcall(require, 'impatient')
if impatient_ok then
  impatient.enable_profile()
end

-- Modules
require 'options'
require 'mappings'
require 'autocommands'
require 'plugins'
require 'lsp'
