hs.grid.setGrid'2x2'
hs.grid.setMargins("0,0")
hs.window.animationDuration = 0

function getWin()
  return hs.window.focusedWindow()
end

-- move window
hs.hotkey.bind(
  ctrl_alt,
  "left",
  function()
    hs.grid.resizeWindowThinner()
    hs.grid.pushWindowLeft()
  end)
hs.hotkey.bind(
  ctrl_alt,
  "right",
  function()
    hs.grid.resizeWindowThinner()
    hs.grid.pushWindowRight()
  end)
hs.hotkey.bind(
  ctrl_alt,
  "up",
  function()
    hs.grid.resizeWindowShorter()
    hs.grid.pushWindowUp()
  end)
hs.hotkey.bind(
  ctrl_alt,
  "down",
  function()
    hs.grid.resizeWindowShorter()
    hs.grid.pushWindowDown()
  end)

-- resize window
hs.hotkey.bind(ctrl_alt, "o", function() hs.grid.resizeWindowTaller() end)
hs.hotkey.bind(ctrl_alt, "p", function() hs.grid.resizeWindowWider() end)

-- move window to next screen
hs.hotkey.bind(ctrl_alt, "/", function() local win = getWin(); win:moveToScreen(win:screen():next()) end)

-- snap window to grid
hs.hotkey.bind(ctrl_alt, ",", function() hs.grid.snap(getWin()) end)

-- space: maximize window
hs.hotkey.bind(ctrl_alt, "space", function() hs.grid.maximizeWindow() end)

-- minimize window
hs.hotkey.bind(ctrl_alt, ".", function() hs.grid.set(getWin(), '0,0 1x1'); end)