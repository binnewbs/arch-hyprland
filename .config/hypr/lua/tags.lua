-- tags.lua - Tags/Workspaces configuration for Hyprland 0.56.2
-- Migrated from .config/hypr/configs/tags.conf

-- Tag definitions
local tags = {

    -- Define individual tags/workspaces
    -- The original config has tag assignments via window rules
    -- Each tag can have specific classes assigned to it

    -- Tag 1: general/work
    -- Classes assigned via windowrules
    general = {},

    -- Tag 2: multimedia
    multimedia = {
        class_patterns = { "^([Mm]pv|vlc)$" },
    },

    -- Tag 3: settings
    settings = {
        class_patterns = { "^(nm-applet|nm-connection-editor|blueman-manager|org.gnome.FileRoller)$" },
        other_classes = { "^(org.gnome.DiskUtility|wihotspot(-gui)?)$" },
    },

    -- Tag 4: viewer
    viewer = {
        class_patterns = { "^org.gnome.SystemMonitor$", "^org.gnome.Evince$", "^(eog|org.gnome.Loupe)$" },
    },

    -- Tag 5: multimedia video (for float/size rules)
    multimedia_video = {
        class_patterns = { "^([Mm]pv|vlc)$" },
    },
}

-- Tag-to-class associations (for reference)
-- These are also defined in windowrules.lua for dual reference
local tag_associations = {
    -- From windowrules.conf - multimedia_video tag
    { tag = "multimedia_video", class = "^([Mm]pv|vlc)$" },

    -- From windowrules.conf - settings tag
    { tag = "settings", class = "^(nm-applet|nm-connection-editor|blueman-manager|org.gnome.FileRoller)$" },
    { tag = "settings", class = "^(org.gnome.DiskUtility|wihotspot(-gui)?)$" },

    -- From windowrules.conf - viewer tag
    { tag = "viewer", class = "^org.gnome.SystemMonitor$" },
    { tag = "viewer", class = "^org.gnome.Evince$" },
    { tag = "viewer", class = "^(eog|org.gnome.Loupe)$" },

    -- Additional associations
    { tag = "settings", class = "^nm-p$" },
    { tag = "settings", class = "^org.pulseaudio.pavucontrol$" },
    { tag = "viewer", class = "^discord$|^vesktop$|^org.telegram.desktop$" },
    { tag = "viewer", class = "^Spotify$" },
    { tag = "viewer", class = "^zen$" },
    { tag = "settings", class = "^org.gnome.Nautilus$" },
    { tag = "settings", class = "^(gedit|org.gnome.TextEditor|mousepad)$" },
    { tag = "viewer", class = "^kitty$" },
}

return {
    tags = tags,
    associations = tag_associations,
}