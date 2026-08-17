--[[
animations.lua - Animation definitions for Hyprland 0.56.2
Migrated from .config/hypr/configs/UserAnimations.conf
Original configuration preserved at .config/hypr/configs/UserAnimations.conf
--]]

-- Animation definitions
-- Format: animation = name, fps, duration, easing, type, params

animations = {

    -- Window entry animations
    { name = "windowsIn", fps = 1, duration = 5, easing = "slow", type = "popin" },

    -- Window exit animations
    { name = "windowsOut", fps = 1, duration = 7, easing = "been", type = "popin 70%" },

    -- Window move animations
    { name = "windowsMove", fps = 1, duration = 5, easing = "wind", type = "slide" },

    -- Border animations
    { name = "border", fps = 1, duration = 1, easing = "linear" },

    -- Fade animations
    { name = "fade", fps = 1, duration = 5, easing = "overshot" },

    -- Workspace animations
    { name = "workspaces", fps = 1, duration = 5, easing = "wind" },

    -- Window bounce animations
    { name = "windows", fps = 1, duration = 5, easing = "bounce", type = "popin" },
}

-- Original bezier curve definitions (preserved as comments for reference)
-- These were used in the old hyprlang system
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

-- Notes:
-- 1. All animation definitions preserved from UserAnimations.conf
-- 2. Original bezier curves preserved as comments for reference
-- 3. Animation names match what Hyprland 0.56.2 expects
-- 4. FPS, duration, easing, and type parameters preserved
-- 5. These animations are referenced in keybindings and window rules