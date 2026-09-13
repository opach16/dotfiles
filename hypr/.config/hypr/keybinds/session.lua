local mainMod = require("./keybinds/common").mainMod

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("noctalia msg session lock"))
