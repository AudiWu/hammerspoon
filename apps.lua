local function toggleApplication(name)
    local app = hs.application.find(name)
    if not app or app:isHidden() then
      hs.application.launchOrFocus(name)
    elseif hs.application.frontmostApplication() ~= app then
      app:activate()
    else
      app:hide()
    end
  end
  
  hs.hotkey.bind(ctrl_alt, "c", function() toggleApplication("Google Chrome") end)
  hs.hotkey.bind(ctrl_alt, "e", function() toggleApplication("Visual Studio Code") end)
  hs.hotkey.bind(ctrl_alt, "t", function() toggleApplication("iTerm") end)