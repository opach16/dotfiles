-- PERSISTENT WORKSPACES
hl.workspace_rule({
  workspace = "1",
  monitor = "eDP-1",
  persistent = true,
})

hl.workspace_rule({
  workspace = "2",
  monitor = "eDP-1",
  persistent = true,
})

hl.workspace_rule({
  workspace = "3",
  monitor = "eDP-1",
  persistent = true,
})

hl.workspace_rule({
  workspace = "4",
  monitor = "DP-6",
  persistent = true,
})

hl.workspace_rule({
  workspace = "5",
  monitor = "DP-7",
  persistent = true,
})

-- APPS RULES 
hl.window_rule({
  name = "ghostty-workspace-2", 
  match = { class = "^com[.]mitchellh[.]ghostty$" }, 
  workspace = "2" 
})

hl.window_rule({
  name = "nvim-workspace-2", 
  match = { class = "^com[.]mitchellh[.]ghostty$", title = "^nvim$" }, 
  workspace = "3" 
})

hl.window_rule({ 
  name = "rencal-workspace-3", 
  match = { class = "^rencal$" }, 
  workspace = "5" 
})

hl.window_rule({ 
  name = "firefox-workspace-1", 
  match = { class = "^org[.]mozilla[.]firefox$" }, 
  workspace = "1" 
})

hl.window_rule({
    name = "firefox-picture-in-picture",
    match = { class = "^org[.]mozilla[.]firefox$", title = "^Picture-in-Picture$" },
    float = true,
    pin = true,
    size = { 426, 240 },
    -- 24 px margin from the bottom-right edge.
    move = { "monitor_w - 426 - 24", "monitor_h - 240 - 24" },
    suppress_event = "fullscreen",
})

hl.window_rule({
  name = "thunderbird-workspace-4", 
  match = { class = "^net[.]thunderbird[.]Thunderbird$" }, 
  workspace = "4"
})

hl.window_rule({
  name = "element-workspace-4", 
  match = { class = "^im[.]riot[.]Riot$" }, 
  workspace = "4" 
})

hl.window_rule({
    name = "noctalia-floating",
    match = { class = "^dev[.]noctalia[.]Noctalia$" },
    float = true,
    center = true,
    size = { 920, 904 },
})

hl.window_rule({ 
  name = "suppress-maximize-events", 
  match = { class = ".*" }, 
  suppress_event = "maximize" 
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true,
})

hl.layer_rule({
    name = "noctalia-blur",
    match = { namespace = '^noctalia-(bar-[^"]+|notification|dock|panel|attached-panel|osd)$' },
    blur = true,
    xray = false,
})
