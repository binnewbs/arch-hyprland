-- windowrules.lua - Window Rules for Hyprland 0.56.2
-- Migrated from .config/hypr/configs/windowrules.conf
-- Original configuration preserved at .config/hypr/configs/windowrules.conf

local windowrules = {

    -- Blur rules
    { noblur = "tag:multimedia_video*" },
    { opacity = 1.0, tag = "multimedia_video*" },
    { opacity = 0.8, tag = "settings*" },
    { class = "^org.gnome.Nautilus", opacity = 0.8 },
    { class = "^gedit$|^org.gnome.TextEditor$|^mousepad", opacity = 0.9 },
    { class = "^org.pulseaudio.pavucontrol", opacity = 0.9 },
    { class = "^kitty", opacity = 0.9 },
    { class = "^discord$|^vesktop$|^org.telegram.desktop$", opacity = 0.85, override = 0.7, override = 1, override = 1 },
    { opacity = 0.8, override = 0.6, override = 1, override = 1, class = "^Spotify$" },
    { opacity = 0.9, override = 0.7, override = 1, override = 1, class = "^zen$" },

    -- Layer rules
    { blur = "waybar" },
    { ignorezero = "waybar" },
    { ignorealpha = 0.5, layer = "waybar" },
    { ignorealpha = 0.5, tag = "notif*" },
    { blur = "swaync-control-center" },
    { blur = "swaync-notification-window" },
    { ignorezero = "swaync-control-center" },
    { ignorezero = "swaync-notification-window" },
    { ignorealpha = 0.5, layer = "swaync-control-center" },
    { ignorealpha = 0.5, layer = "swaync-notification-window" },
    { xray = 0, layer = "swaync-control-center" },
    { xray = 0, layer = "swaync-notification-window" },
    { blur = "logout_dialog" },

    -- Float rules
    { float = "tag:settings*" },
    { float = "tag:viewer*" },
    { float = "tag:multimedia_video*" },
    { size = "900 506", tag = "multimedia_video*" },
    { float = "class:pulseaudio.pavucontrol" },
    { size = "50% 60%", class = "^org.pulseaudio.pavucontrol" },

    -- Tag-class associations
    { tag = "multimedia_video", class = "^([Mm]pv|vlc)$" },
    { tag = "settings", class = "^(nm-applet|nm-connection-editor|blueman-manager|org.gnome.FileRoller)$" },
    { tag = "settings", class = "^(org.gnome.DiskUtility|wihotspot(-gui)?)$" },
    { tag = "viewer", class = "^org.gnome.SystemMonitor$" },
    { tag = "viewer", class = "^org.gnome.Evince$" },
    { tag = "viewer", class = "^(eog|org.gnome.Loupe)$" },
}

return windowrules