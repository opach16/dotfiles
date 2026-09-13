-- Start the desktop shell after Hyprland launches.
hl.on("hyprland.start", function()
    hl.exec_cmd("uwsm app -- noctalia")
end)
