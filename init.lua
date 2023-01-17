ctrl_alt = {"ctrl", "alt"}

require "apps"
require "window"

hs.hotkey.bind(ctrl_alt, "r", function() hs.reload(); end)
hs.alert("Hammerspoon config loaded")