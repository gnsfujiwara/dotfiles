-- Setup colorscheme
local ok, _ = pcall(vim.cmd, 'colorscheme base16-black-metal')
if not ok then
  vim.cmd 'colorscheme default'
end
