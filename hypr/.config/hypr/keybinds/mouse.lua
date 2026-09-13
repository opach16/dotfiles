local mainMod = require("./keybinds/common").mainMod

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true, })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true, })
hl.bind("mouse:274", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle", layout_aware = true, }))
