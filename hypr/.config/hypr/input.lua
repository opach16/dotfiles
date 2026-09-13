-- Cursor movement and workspace focus behavior.
hl.config({
    cursor = {
        no_warps = false,
        persistent_warps = false,
        warp_on_change_workspace = 1,
        warp_on_toggle_special = 1,
    },

    -- Keyboard, mouse, and touchpad settings.
    input = {
        kb_layout = "pl",
        repeat_rate = 25,
        repeat_delay = 400,
        follow_mouse = 1,
        sensitivity = 0,

        -- Touchpad behavior.
        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
            tap_and_drag = true,
            drag_lock = true,
            disable_while_typing = true,
            middle_button_emulation = false,
            scroll_factor = 1.0,
        },
    },
})
