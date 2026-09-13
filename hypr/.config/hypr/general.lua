local c = require("./colors")

-- Core compositor behavior and spacing.
hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 0,
        resize_on_border = true,
        allow_tearing = false,
        layout = "scrolling",

        -- Window border colors.
        col = {
            active_border = c.accent .. "ff",
            inactive_border = c.surface .. "00",
            nogroup_border = c.error .. "ff",
            nogroup_border_active = c.error_dark .. "ff",
        },
    },

    -- Keyboard and mouse binding behavior.
    binds = {
        scroll_event_delay = 150,
        drag_threshold = 10,
    },

    -- General compositor options.
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        initial_workspace_tracking = 1,
        focus_on_activate = false,
    },

    -- Keep XWayland applications at native scale.
    xwayland = {
        force_zero_scaling = true,
    },
})

-- Window group behavior and group border colors.
hl.config({
    group = {
        auto_group = false,

        col = {
            border_active = c.accent .. "ff",
            border_inactive = c.surface .. "ff",
            border_locked_active = c.accent_bright .. "ff",
            border_locked_inactive = c.muted .. "ff",
        },
    },
})
