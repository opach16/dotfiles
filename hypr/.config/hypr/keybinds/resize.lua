local mainMod = require("./keybinds/common").mainMod

hl.bind(mainMod .. " + CTRL + H", hl.dsp.layout("colresize -0.05"))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.layout("colresize +0.05"))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.resize({ x = 0, y = -50, relative = true, }))
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.resize({ x = 0, y = 50, relative = true, }))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.window.float())
hl.bind(mainMod .. " + R", hl.dsp.layout("colresize +conf"))
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle", layout_aware = true, }))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle", layout_aware = true, }))
