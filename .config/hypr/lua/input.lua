-- input.lua - Input configuration for Hyprland 0.56.2
-- Migrated from .config/hypr/configs/input.conf

local input = {
    -- Keyboard layout
    kb_layout = "us",
    kb_variant = "",
    kb_model = "",
    kb_rules = "",

    -- Keyboard behavior
    follow_mouse = 1,

    -- Mouse/touchpad settings
    sensitivity = 0,         -- -1.0 to 1.0, 0 means no modification
    accel_profile = "flat",  -- flat, adaptive, none, etc.
    force_no_accel = 1,      -- force no acceleration

    -- Touchpad settings
    touchpad = {
        natural_scroll = true,
    },

    -- Gestures
    gestures = {
        workspace_swipe = true,
    },

    -- Per-device configuration
    device = {
        {
            name = "epic-mouse-v1",
            sensitivity = -0.5,
        },
    },
}

return input