local mainMod = require("./keybinds/common").mainMod

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("uwsm app -- ghostty"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("uwsm app -- nautilus"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("uwsm app -- firefox"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("uwsm app -- firefox --private-window"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("uwsm app -- thunderbird"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("uwsm app -- rencal"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("uwsm app -- ghostty -e nvim"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("uwsm app -- ghostty -e btop"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("uwsm app -- ghostty -e lazydocker"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("uwsm app -- ghostty -e elio"))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("uwsm app -- ghostty -e bookokrat"))
