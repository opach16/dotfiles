-- Left display
hl.monitor({
    output   = "DP-6",
    mode     = "2560x1440@120",
    position = "0x0",
    scale    = 1.25,
})

-- Laptop display
hl.monitor({
    output   = "eDP-1",
    mode     = "2240x1400@60",
    position = "2048x0",
    scale    = 1.25,
})

-- Right display
hl.monitor({
    output   = "DP-7",
    mode     = "2560x1440@120",
    position = "3840x0",
    scale    = 1.25,
})
