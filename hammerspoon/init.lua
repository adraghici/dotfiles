require("alfred")

--------------------------------------------------------------------------------
-- Basic hotkeys

local hotkey = require "hs.hotkey"
local tiling = require "hs.tiling"
local mash = {"cmd"}

hotkey.bind(mash, "m", function() tiling.cyclelayout() end)
hotkey.bind(mash, "j", function() tiling.cycle(1) end)
hotkey.bind(mash, "k", function() tiling.cycle(-1) end)
hotkey.bind(mash, "return", function() tiling.promote() end)

--------------------------------------------------------------------------------
-- Use desired layouts
tiling.set('layouts', {
  'fullscreen', 'main-vertical' 
})

--------------------------------------------------------------------------------
-- Turn off Animations.
hs.window.animationDuration = 0

