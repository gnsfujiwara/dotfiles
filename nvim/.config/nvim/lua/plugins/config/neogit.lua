-- neogit setup
local neogit_ok, neogit = pcall(require, 'neogit')
if not neogit_ok then
  return
end

neogit.setup({
  integrations = {
    diffview = true,
  },
})

-- neogit keybindings
local opts = { silent = true, noremap = true }

vim.keymap.set('n', '<leader>go', neogit.open, opts)
