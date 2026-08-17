-- looknfeel.lua - Look and Feel configuration for Hyprland 0.56.2
-- Migrated from .config/hypr/configs/looknfeel.conf

local looknfeel = {
    -- General spacing
    gaps_in = 5,    -- inner gaps
    gaps_out = 10,  -- outer gaps

    -- Border settings
    border_size = 2,

    -- Border colors
    -- These reference $outline and $outline_variant from the original config
    -- In Lua, we define actual color values or reference the colors module
    active_border = "$outline",    -- color variable reference
    inactive_border = "$outline_variant", -- color variable reference

    -- Resizing behavior
    resize_on_border = false,

    -- Tearing control
    allow_tearing = false,

    -- Layout
    layout = "dwindle", -- dwindle/pseudotile layout

    -- Decoration settings
    decoration = {
        rounding = 10,
        rounding_power = 2,

        -- Opacity settings
        active_opacity = 1.0,
        inactive_opacity = 0.8,

        -- Shadow settings
        shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        -- Blur settings
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
    },
}

return looknfeel