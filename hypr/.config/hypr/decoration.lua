local c = require("./colors")

-- Window appearance and opacity settings.
hl.config({
    decoration = {
        rounding = 10,
        active_opacity = 0.99,
        inactive_opacity = 0.89,
        fullscreen_opacity = 1.0,

        -- Window shadow settings.
        shadow = {
            enabled = true,
            range = 15,
            render_power = 2,
            color = c.background .. "e0",
            color_inactive = c.background .. "b0",
            offset = { 0, 0 },
        },

        -- Background blur settings.
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            noise = 0.02,
            brightness = 0.9,
            contrast = 0.9,
            vibrancy = 0.5,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            popups = true,
            special = false,
        },
    },
})
