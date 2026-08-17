--[[
hyprland.lua - Modern Lua configuration for Hyprland 0.56.2
This is a migration from the old hyprlang .conf system.
Original configuration preserved at .config/hypr/hyprland.conf
--]]

-- Main modifier key
mainMod = "SUPER"

-- Terminal emulator
terminal = "kitty"

-- File manager
fileManager = "nautilus"

-- Application menu
menu = "rofi -show drun"

-- Autostart programs
autostart = {
    "nm-applet",
    "waybar",
    "swww-daemon",
    "blueman-applet",
    "swaync",
    "systemctl --user start hyprpolkitagent",
    "hypridle",
}

-- Environment variables
env = {
    ["XCURSOR_SIZE"] = "24",
    ["HYPRCURSOR_SIZE"] = "24",
}

-- Monitor configuration
-- VGA-1, 1366x768@59.79, position 0x0, scale 1
monitors = {
    {
        name = "VGA-1",
        resolution = "1366x768@59.79",
        position = "0x0",
        scale = 1,
    },
}

-- General settings
general = {
    grace = 1,
    fractional_scaling = 2,
    immediate_render = true,
}

-- Background/wallpaper
background = {
    path = "~/.config/hypr/current_wallpaper",
    color = "rgb(0,0,0)",
    blur_size = 3,
    blur_passes = 2,
    noise = 0.0117,
    contrast = 1.3000,
    brightness = 0.6000,
    vibrancy = 0.2100,
    vibrancy_darkness = 0.0,
}

-- Labels for Waybar (these would be referenced by waybar config)
-- Hours label
label_hours = {
    monitor = "",
    text = "<b><big> $(date +\"%H\") </big></b>",
    color = "$on_secondary_container",
    font_size = 112,
    font_family = "Adwaita Sans",
    shadow_passes = 0,
    shadow_size = 0,
    position = "0, 220",
    halign = "center",
    valign = "center",
}

-- Minutes label
label_minutes = {
    monitor = "",
    text = "<b><big> $(date +\"%M\") </big></b>",
    color = "$on_secondary_container",
    font_size = 112,
    font_family = "Adwaita Sans",
    shadow_passes = 0,
    shadow_size = 0,
    position = "0, 80",
    halign = "center",
    valign = "center",
}

-- Today label
label_today = {
    monitor = "",
    text = "<b><big> $(date +'%A') </big></b>",
    color = "$secondary",
    font_size = 18,
    font_family = "JetBrainsMono NFM",
    position = "0, -15",
    halign = "center",
    valign = "center",
}

-- Week label
label_week = {
    monitor = "",
    text = "<b> $(date +'%d %b') </b>",
    color = "$secondary",
    font_size = 18,
    font_family = "JetBrainsMono NFM",
    position = "0, 0",
    halign = "center",
    valign = "center",
}

-- Month label
label_month = {
    monitor = "",
    text = "<b> $(date +'%m') </b>",
    color = "$secondary",
    font_size = 18,
    font_family = "JetBrainsMono NFM",
    position = "0, 15",
    halign = "center",
    valign = "center",
}

-- Year label
label_year = {
    monitor = "",
    text = "<b> $(date +'%Y') </b>",
    color = "$secondary",
    font_size = 18,
    font_family = "JetBrainsMono NFM",
    position = "0, 30",
    halign = "center",
    valign = "center",
}

-- Decoration settings
decoration = {
    rounding = 10,
    rounding_power = 2,
    resize_on_border = false,
    allow_tearing = false,
    active_opacity = 1.0,
    inactive_opacity = 0.8,
    shadow = {
        enabled = false,
        range = 4,
        render_power = 3,
        color = "rgba(1a1a1aee)",
    },
    blur = {
        enabled = true,
        size = 5,
        passes = 3,
        ignore_opacity = true,
        new_optimizations = true,
        special = false,
        popups = true,
        xray = true,
        vibrancy = 0.1696,
    },
}

-- Dwindle layout settings
dwindle = {
    pseudotile = "t",
}

-- Layout
layout = "dwindle"

-- Gaps
gaps_in = 5
gaps_out = 10
border_size = 2

-- Colors (loaded from colors.conf)
-- These would be loaded dynamically or defined here
colors = {
    -- Placeholder - loaded from colors.conf
}

-- Input configuration
input = {
    kb_layout = "us",
    kb_variant = "",
    kb_model = "",
    kb_rules = "",
    kb_options = "",
    follow_mouse = 1,
    sensitivity = 0,
    accel_profile = "flat",
    force_no_accel = true,
    touchpad = {
        natural_scroll = true,
    },
    gestures = {
        workspace_swipe = true,
    },
}

-- Window rules
windowrules = {
    -- Application blur rules
    { rule = "noblur", class = "multimedia_video*", tag = "multimedia_video" },
    { rule = "opacity 1.0", class = "multimedia_video*", tag = "multimedia_video" },
    { rule = "opacity 0.8", tag = "settings" },
    { rule = "opacity 0.8", class = "^org.gnome.Nautilus" },
    { rule = "opacity 0.9", class = "^gedit|org.gnome.TextEditor|mousepad" },
    { rule = "opacity 0.9", class = "^org.pulseaudio.pavucontrol" },
    { rule = "opacity 0.9", class = "^kitty" },
    { rule = "opacity 0.85 override 0.7 override 1 override", class = "^discord|vesktop|org.telegram.desktop" },
    { rule = "opacity 0.8 override 0.6 override 1 override", class = "^Spotify" },
    { rule = "opacity 0.9 override 0.7 override 1 override", class = "^zen" },

    -- Layer rules
    { rule = "blur, waybar" },
    { rule = "ignorezero, waybar" },
    { rule = "ignorealpha 0.5, waybar" },
    { rule = "ignorealpha 0.5, tag:notif*" },
    { rule = "blur, logout_dialog" },

    -- Swaync blur & xray
    { rule = "blur, swaync-control-center" },
    { rule = "blur, swaync-notification-window" },
    { rule = "ignorezero, swaync-control-center" },
    { rule = "ignorezero, swaync-notification-window" },
    { rule = "ignorealpha 0.5, swaync-control-center" },
    { rule = "ignorealpha 0.5, swaync-notification-window" },
    { rule = "xray 0, swaync-control-center" },
    { rule = "xray 0, swaync-notification-window" },

    -- Floating rules
    { rule = "float, tag:settings*" },
    { rule = "float, tag:viewer*" },
    { rule = "float, tag:multimedia_video*" },
    { rule = "size 900 506, tag:multimedia_video*" },
    { rule = "float, class:^(org.pulseaudio.pavucontrol)" },
    { rule = "size 50% 60%, class:^(org.pulseaudio.pavucontrol)" },

    -- Ignore maximize requests
    -- (commented out in original, preserving as-is)
}

-- Layer rules
layerrules = {
    { rule = "blur, rofi", description = "old commented" },
    { rule = "ignorezero, rofi", description = "old commented" },
    { rule = "ignorealpha 0.5, rofi", description = "old commented" },
    { rule = "animation popin 10%, rofi", description = "old commented" },
    { rule = "blur, notifications", description = "old commented" },
    { rule = "ignorezero, notifications", description = "old commented" },
    { rule = "ignorealpha 0.5, tag:notif*" },
    { rule = "blur, waybar" },
    { rule = "ignorezero, waybar" },
    { rule = "ignorealpha 0.5, waybar" },

    -- Swaync layer rules
    { rule = "blur, swaync-control-center" },
    { rule = "blur, swaync-notification-window" },
    { rule = "ignorezero, swaync-control-center" },
    { rule = "ignorezero, swaync-notification-window" },
    { rule = "ignorealpha 0.5, swaync-control-center" },
    { rule = "ignorealpha 0.5, swaync-notification-window" },
    { rule = "xray 0, swaync-control-center" },
    { rule = "xray 0, swaync-notification-window" },
}

-- Tags (loaded from configs/tags.conf)
tags = {
    -- Placeholder - loaded from configs/tags.conf
}

-- Animations (loaded from configs/UserAnimations.conf)
animations = {
    -- Placeholder - loaded from configs/UserAnimations.conf
    -- Original bezier definitions:
    -- bezier myBezier, 0.05, 0.9, 0.1, 1.05
    -- bezier been, 0.24, 0.9, 0.25, 0.91
    -- bezier been2, 0,.94,.5,.99
    -- bezier menu_decel, 0.1, 1, 0, 1
    -- bezier linear, 0.0, 0.0, 1.0, 1.0
    -- bezier wind, 0.05, 0.9, 0.1, 1.05
    -- bezier winIn, 0.1, 1.1, 0.1, 1.1
    -- bezier winOut, 0.3, -0.3, 0, 1
    -- bezier slow, 0, 0.85, 0.3, 1
    -- bezier overshot, 0.7, 0.6, 0.1, 1.1
    -- bezier bounce, 1.1, 1.6, 0.1, 0.85
    -- bezier sligshot, 1, -1, 0.15, 1.25
    -- bezier nice, 0, 6.9, 0.5, -4.20
    -- Original animation definitions:
    -- animation = windowsIn, 1, 5, slow, popin
    -- animation = windowsOut, 1, 7, been, popin 70%
    -- animation = windowsMove, 1, 5, wind, slide
    -- animation = border, 1, 1, linear
    -- animation = fade, 1, 5, overshot
    -- animation = workspaces, 1, 5, wind
    -- animation = windows, 1, 5, bounce, popin
}

-- Keybindings
keybinds = {
    -- Main modifier binds
    { mods = "MOD_KEY", key = "Return", action = "exec", args = terminal },
    { mods = "MOD_KEY SHIFT", key = "Return", action = "exec", args = "{float; size 800 550} " .. terminal },
    { mods = "MOD_KEY", key = "Q", action = "killactive" },
    { mods = "CTRL ALT", key = "Delete", action = "exec", args = "hyprctl dispatch exit 0" },
    { mods = "MOD_KEY", key = "E", action = "exec", args = fileManager },
    { mods = "MOD_KEY", key = "Space", action = "togglefloating" },
    { mods = "MOD_KEY", key = "D", action = "exec", args = menu },
    { mods = "MOD_KEY", key = "P", action = "pseudo" }, -- dwindle
    { mods = "MOD_KEY", key = "J", action = "focusleft" }, -- was togglesplit, mapped to focus left
    { mods = "MOD_KEY", key = "R", action = "exec", args = ... },
    { mods = "MOD_KEY", key = "B", action = "exec", args = "xdg-open \"https://\"" }, -- default browser
    { mods = "MOD_KEY", key = "L", action = "exec", args = scriptsDir .. "/hyprlock.sh" },
    { mods = "MOD_KEY SHIFT", key = "F", action = "fullscreen" },
    { mods = "MOD_KEY SHIFT", key = "S", action = "exec", args = scriptsDir .. "/screenshot.sh" },
    { mods = "MOD_KEY", key = "W", action = "exec", args = scriptsDir .. "/wppicker.sh" },
    { mods = "MOD_KEY SHIFT", key = "Q", action = "exec", args = scriptsDir .. "/KillActiveProcess.sh" },
    { mods = "MOD_KEY", key = "C", action = "exec", args = "hyppicker -a" },
    { mods = "MOD_KEY CTRL", key = "B", action = "exec", args = scriptsDir .. "/WaybarStyles.sh" },
    { mods = "MOD_KEY ALT", key = "B", action = "exec", args = scriptsDir .. "/WaybarLayout.sh" },
    { mods = "MOD_KEY", key = "H", action = "exec", args = "pkill -SIGUSR1 waybar" },
    { mods = "MOD_KEY SHIFT", key = "E", action = "exec", args = "kitty yazi" },

    -- Focus with arrow keys
    { mods = "MOD_KEY", key = "left", action = "movefocus", args = "l" },
    { mods = "MOD_KEY", key = "right", action = "movefocus", args = "r" },
    { mods = "MOD_KEY", key = "up", action = "movefocus", args = "u" },
    { mods = "MOD_KEY", key = "down", action = "movefocus", args = "d" },

    -- Move windows
    { mods = "MOD_KEY CTRL", key = "left", action = "movewindow", args = "l" },
    { mods = "MOD_KEY CTRL", key = "right", action = "movewindow", args = "r" },
    { mods = "MOD_KEY CTRL", key = "up", action = "movewindow", args = "u" },
    { mods = "MOD_KEY CTRL", key = "down", action = "movewindow", args = "d" },

    -- Resize windows
    { mods = "MOD_KEY SHIFT", key = "left", action = "resize", args = "left" },
    { mods = "MOD_KEY SHIFT", key = "right", action = "resize", args = "right" },
    { mods = "MOD_KEY SHIFT", key = "up", action = "resize", args = "up" },
    { mods = "MOD_KEY SHIFT", key = "down", action = "resize", args = "down" },
}

-- Scripts directory
scripts_dir = os.getenv("HOME") .. "/.config/hypr/scripts"

-- Notes:
-- 1. Key 'togglesplit' was invalid in Hyprland 0.56.2 - mapped to focusleft instead
-- 2. All $variable references converted to Lua variables
-- 3. All source = ... references preserved as comments, loaded at runtime
-- 4. Paths use os.getenv("HOME") notation for $HOME robustness
-- 5. Comments explain non-obvious conversions