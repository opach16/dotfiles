local mainMod = require("./keybinds/common").mainMod

local layout_cycle = { "scrolling", "dwindle", "master" }

local function switch_layout()
    local current = hl.get_config("general.layout")
    local current_index = 1

    for i, layout in ipairs(layout_cycle) do
        if current == layout then current_index = i break end
    end

    hl.config({ general = { layout = layout_cycle[current_index % #layout_cycle + 1] } })
end

hl.bind(mainMod .. " + SHIFT + N", switch_layout)
