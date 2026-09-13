-- Custom easing curves for opening, closing, and fading.
hl.curve("mangoOpen", { type = "bezier", points = {{0.46, 1}, {0.29, 1}} })
hl.curve("mangoClose", { type = "bezier", points = {{0.08, 0.92}, {0, 1}} })
hl.curve("mangoFade", { type = "bezier", points = {{0.5, 0.5}, {0.5, 0.5}} })

-- Global animation settings.
hl.animation({ leaf = "global", enabled = true, speed = 3, bezier = "mangoOpen" })

-- Window animations.
hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "mangoOpen", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "mangoOpen", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "mangoClose", style = "slide" })

-- Fade animations.
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "mangoFade" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3, bezier = "mangoOpen" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 3, bezier = "mangoClose" })

-- Movement, layer, workspace, and zoom animations.
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "mangoOpen" })
hl.animation({ leaf = "layers", enabled = true, speed = 3, bezier = "mangoOpen" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "mangoOpen", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "mangoClose", style = "slide" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "mangoOpen", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "mangoOpen", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "mangoClose", style = "slide" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 3, bezier = "mangoOpen" })
