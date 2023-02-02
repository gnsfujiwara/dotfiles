-- Setup colorscheme
-- local ok, _ = pcall(vim.cmd.colorscheme, 'base16-black-metal')
local ok, _ = pcall(vim.cmd.colorscheme, 'base16-default-dark')
if not ok then
  vim.cmd.colorscheme 'default'
end
