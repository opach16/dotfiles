hl.gesture({ 
  fingers = 3,
  direction = "horizontal",
  action = "workspace"
})

hl.gesture({ 
  fingers = 4,
  direction = "vertical",
  scale = 1.5,
  action = "fullscreen"
})

hl.gesture({
    fingers = 4,
    direction = "left",
    action = function()
        hl.dispatch(hl.dsp.window.swap({ direction = "left" }))
    end
})

hl.gesture({
    fingers = 4,
    direction = "right",
    action = function()
        hl.dispatch(hl.dsp.window.swap({ direction = "right" }))
    end
})
