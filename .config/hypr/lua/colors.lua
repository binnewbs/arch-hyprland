-- colors.lua - Color palette for Hyprland 0.56.2
-- Migrated from .config/hypr/colors.conf

-- Main image/wallpaper reference
local image = os.getenv("HOME") .. "/Pictures/wallpapers/37.jpg"

-- Color definitions (rgba format as used in hyprlang)
local colors = {
    -- Background colors
    background = "rgba(0f1416ff)",
    -- foreground/on-background
    on_background = "rgba(dee3e6ff)",

    -- Error colors
    error = "rgba(ffb4abff)",
    error_container = "rgba(93000aff)",

    -- Inverse colors
    inverse_on_surface = "rgba(2c3133ff)",
    inverse_primary = "rgba(00677dff)",
    inverse_surface = "rgba(dee3e6ff)",

    -- Surface colors
    on_primary = "rgba(003642ff)",
    on_primary_container = "rgba(b2ebffff)",
    on_primary_fixed = "rgba(001f27ff)",
    on_primary_fixed_variant = "rgba(004e5fff)",
    on_secondary = "rgba(1d343bff)",
    on_secondary_container = "rgba(cee6f0ff)",
    on_secondary_fixed = "rgba(061e25ff)",
    on_secondary_fixed_variant = "rgba(344a52ff)",
    on_tertiary = "rgba(2a2e4dff)",
    on_tertiary_container = "rgba(dfe0ffff)",

    -- Surface variant colors
    on_surface = "rgba(dee3e6ff)",
    on_surface_variant = "rgba(bfc8ccff)",

    -- Tertiary colors
    on_tertiary = "rgba(2a2e4dff)",
    on_tertiary_container = "rgba(dfe0ffff)",

    -- Additional surface colors
    surface = "rgba(bfc8ccff)", -- derived from on_surface_variant
    surface_variant = "rgba(bfc8ccff)",
}

-- Color group mappings for easy access
-- These map to the $variable names used in the original config

-- Primary color group
colors.primary = {
    image = image,
    background = colors.background,
    on_background = colors.on_background,
}

-- Error color group
colors.error = {
    error = colors.error,
    error_container = colors.error_container,
}

-- Inverse color group
colors.inverse = {
    on_surface = colors.inverse_on_surface,
    primary = colors.inverse_primary,
    surface = colors.inverse_surface,
}

-- Secondary color group
colors.secondary = {
    on_primary = colors.on_primary,
    on_primary_container = colors.on_primary_container,
    on_primary_fixed = colors.on_primary_fixed,
    on_primary_fixed_variant = colors.on_primary_fixed_variant,
    on_secondary = colors.on_secondary,
    on_secondary_container = colors.on_secondary_container,
    on_secondary_fixed = colors.on_secondary_fixed,
    on_secondary_fixed_variant = colors.on_secondary_fixed_variant,
}

-- Tertiary color group
colors.tertiary = {
    on_tertiary = colors.on_tertiary,
    on_tertiary_container = colors.on_tertiary_container,
}

-- Neutral colors
colors.neutral = {
    on_surface = colors.on_surface,
    on_surface_variant = colors.on_surface_variant,
    surface = colors.surface,
    surface_variant = colors.surface_variant,
}

return colors