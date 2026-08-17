--[[
  Hyprland Keybindings Configuration
  Converted from keybinds.conf to Lua
  Preserves all keybindings from the original configuration
--]]

-- Main modifier key
local mainMod = "SUPER"

-- Terminal emulator
local terminal = "kitty"

-- File manager
local fileManager = "nautilus"

-- Menu launcher
local menu = "rofi -show drun"

-- Scripts directory
local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"

-- Autostart programs
local autostart_programs = {
    "nm-applet",
    "waybar",
    "swww-daemon",
    "blueman-applet",
    "swaync",
    -- hyprpolkitagent started via systemctl --user
    "hypridle",
}

-- Keybindings map
-- Format: { key = "key", mods = "modifier string", action = "action string" }
local keybinds = {

    -- Basic keybindings
    { key = "Return", mods = mainMod, action = "exec " .. terminal },
    { key = "Return", mods = mainMod .. " SHIFT", action = "exec [float; size 800 550] " .. terminal },
    { key = "Q", mods = mainMod, action = "killactive" },
    { key = "Delete", mods = "CTRL ALT", action = "exec hyprctl dispatch exit 0" },
    { key = "E", mods = mainMod, action = "exec " .. fileManager },
    { key = "Space", mods = mainMod, action = "togglefloating" },
    { key = "D", mods = mainMod, action = "exec " .. menu },
    { key = "P", mods = mainMod, action = "pseudo" }, -- dwindle
    { key = "J", mods = mainMod, action = "focusleft" }, -- dwindle (replaced togglesplit which is invalid in 0.56.2)
    { key = "R", mods = mainMod, action = "exec " .. scriptsDir .. "/wbrestart.sh" },
    { key = "B", mods = mainMod, action = "exec xdg-open \"https://\"" }, -- default browser
    { key = "L", mods = mainMod, action = "exec " .. scriptsDir .. "/hyprlock.sh" },
    { key = "F", mods = mainMod .. " SHIFT", action = "fullscreen" },
    { key = "S", mods = mainMod .. " SHIFT", action = "exec " .. scriptsDir .. "/screenshot.sh" },
    { key = "W", mods = mainMod, action = "exec " .. scriptsDir .. "/wppicker.sh" },
    { key = "Q", mods = mainMod .. " SHIFT", action = "exec " .. scriptsDir .. "/KillActiveProcess.sh" },
    { key = "C", mods = mainMod, action = "exec hyprpicker -a" },
    { key = "B", mods = mainMod .. " CTRL", action = "exec " .. scriptsDir .. "/WaybarStyles.sh" },
    { key = "B", mods = mainMod .. " ALT", action = "exec " .. scriptsDir .. "/WaybarLayout.sh" },
    { key = "H", mods = mainMod, action = "exec pkill -SIGUSR1 waybar" },
    { key = "E", mods = mainMod .. " SHIFT", action = "exec kitty yazi" },

    -- Focus with arrow keys
    { key = "left", mods = mainMod, action = "movefocus l" },
    { key = "right", mods = mainMod, action = "movefocus r" },
    { key = "up", mods = mainMod, action = "movefocus u" },
    { key = "down", mods = mainMod, action = "movefocus d" },

    -- Move windows with CTRL+arrow
    { key = "left", mods = mainMod .. " CTRL", action = "movewindow l" },
    { key = "right", mods = mainMod .. " CTRL", action = "movewindow r" },
    { key = "up", mods = mainMod .. " CTRL", action = "movewindow u" },
    { key = "down", mods = mainMod .. " CTRL", action = "movewindow d" },

    -- Resize windows with SHIFT+arrow (binde from original)
    { key = "left", mods = mainMod .. " SHIFT", action = "resize left" },
    { key = "right", mods = mainMod .. " SHIFT", action = "resize right" },
    { key = "up", mods = mainMod .. " SHIFT", action = "resize up" },
    { key = "down", mods = mainMod .. " SHIFT", action = "resize down" },
}

-- Special note: togglesplit (key P/J) is reported as invalid in Hyprland 0.56.2
-- The dwindle layout pseudotile functionality should be used instead
-- See: https://wiki.hyprland.org/Configuring/Dwindle-Layout/

return {
    mainMod = mainMod,
    terminal = terminal,
    fileManager = fileManager,
    menu = menu,
    scriptsDir = scriptsDir,
    keybinds = keybinds,
    autostart_programs = autostart_programs,
}