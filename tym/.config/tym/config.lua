--[[

tym config
Author: gnsfujiwara <gnsfujiwara@disroot.org>

--]]

local tym = require 'tym'

tym.set_config({
  font = 'JetBrainsMono NF 10',
  scrollback_length = 4096,
  autohide = true,
  cursor_blink_mode = 'off',
  uri_schemes = 'http https file mailto irc',
  padding_horizontal = 8,
  padding_vertical = 8,
})

tym.set_keymaps({
  ['<Ctrl><Shift>r'] = function()
    tym.reload()
  end,

  -- Resize font on the fly
  ['<Ctrl><Shift>plus'] = function()
    tym.set('scale', tym.get 'scale' + 10)
  end,
  ['<Ctrl>minus'] = function()
    tym.set('scale', tym.get 'scale' - 10)
  end,
  ['<Ctrl>equal'] = function()
    tym.set('scale', 100)
  end,
})
