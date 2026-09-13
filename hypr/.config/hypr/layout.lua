-- Scrolling layout configuration.
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
        column_width = 0.5,
        focus_fit_method = 1,
        follow_focus = true,
        follow_min_visible = 0.4,
        explicit_column_widths = "0.4, 0.5, 0.6",
        wrap_focus = true,
        wrap_swapcol = true,
        direction = "right",
    },

    -- Dwindle layout fallback settings.
    dwindle = {
        preserve_split = true,
    },

    -- Master layout fallback settings.
    master = {
        new_status = "master",
    },
})

-- Use the scrolling layout on the first five workspaces.
for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        layout = "scrolling",
    })
end
