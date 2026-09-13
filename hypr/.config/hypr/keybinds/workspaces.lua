local mainMod = require("./keybinds/common").mainMod

local workspaces = {
    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
    ["0"] = 10,
}

for key, workspace in pairs(workspaces) do
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = workspace, }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = workspace, }))
end

hl.bind(mainMod .. " + Comma", hl.dsp.focus({ monitor = "left", }))
hl.bind(mainMod .. " + Period", hl.dsp.focus({ monitor = "right", }))
hl.bind(mainMod .. " + SHIFT + Comma", hl.dsp.window.move({ monitor = "left", follow = true, }))
hl.bind(mainMod .. " + SHIFT + Period", hl.dsp.window.move({ monitor = "right", follow = true, }))
hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "e+1", }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1", }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1", }))
