local opts = { silent = true, noremap = true }
local map = vim.keymap.set

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Cycle buffers
map('n', '<Tab>', '<Cmd>bnext<CR>', opts)
map('n', '<S-Tab>', '<Cmd>bprevious<CR>', opts)

-- Diagnostics keymaps
map('n', '<space>e', vim.diagnostic.open_float, opts)
map('n', '[d', vim.diagnostic.goto_prev, opts)
map('n', ']d', vim.diagnostic.goto_next, opts)
map('n', '<space>q', vim.diagnostic.setloclist, opts)
