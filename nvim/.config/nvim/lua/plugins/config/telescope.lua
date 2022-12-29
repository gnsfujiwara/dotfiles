-- telescope.nvim setup
local telescope_ok, telescope = pcall(require, 'telescope')
if not telescope_ok then
  return
end

telescope.setup({
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--vimgrep',
      '--hidden',
      '--smart-case',
      '--trim',
    },
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = 'dropdown',
      previewer = false,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
  },
})

-- Load extensions
telescope.load_extension 'fzf'
telescope.load_extension 'frecency'

-- telescope.nvim keybindings
local opts = { silent = true, noremap = true }
local builtin = require 'telescope.builtin'
local extension = require('telescope').extensions

vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>fr', extension.frecency.frecency, opts)
