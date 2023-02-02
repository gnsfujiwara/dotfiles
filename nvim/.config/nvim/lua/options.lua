-- nvim setup
local options = {
  -- Interface
  termguicolors = true,
  number = true,
  relativenumber = true,
  title = true,
  cursorline = true,
  showmode = false,

  -- Behaviour
  mouse = 'a',
  scrolloff = 5,
  sidescrolloff = 5,
  sidescroll = 1,
  timeoutlen = 250,
  wrap = false,
  splitbelow = true,
  splitright = true,
  clipboard = 'unnamedplus',
  completeopt = { 'menu', 'menuone', 'noselect' },

  -- Indentation
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  expandtab = true,
  smartindent = true,

  -- Search/Regexp
  inccommand = 'split',
  ignorecase = true,
  smartcase = true,
  wildignorecase = true,

  -- Folding
  foldmethod = 'expr',
  foldexpr = 'nvim_treesitter#foldexpr()',
  foldlevelstart = 99,

  -- Backup/Swap
  backup = false,
  writebackup = true,
  swapfile = true,
  autoread = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Providers
vim.g.python3_host_prog = 'python'
