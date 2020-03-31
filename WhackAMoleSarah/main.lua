-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

----------------------------------------------------------
--Object
--------------------------------------------------------------
--Ground 
local ground = display.newImage("Images/ground.png", 511, 750)
 -- change the width to be the same as the screen
  ground.width = display.contentWidth

  -- add to physics
  physics.addBody(ground, "static", {friction= 0.7, bounce=0.4})

-- display the bean image
local beam = display.newImage("Images/beam.png")

-- set the x and y position
 beam.x = display.contentCenterX/5
 beam.y = display.contentCenterY*1.65

  -------------------
 --code

 -- rotate the beam -60 degrees so its on an angle
 beam:rotate(45)

 -- send it to the back layer
 beam:toBack()

 -- add to physics
 physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-- create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)
  -- set the x and y pos
  bkg.x = display.contentCenterX
  bkg.y = display.contentCenterY

  -- send to the back
  bkg:toBack()
  ------------------------------------------------
  --FUNCITION
  -----------------------------------------------------
 -- create the first ball

local function firstBall()
  -- create first ball
  local ball1 = display.newImage("Images/super_ball.png", 0, 0)

 -- add to physics
 physics.addBody(ball1, {density=1.0, friction= 0.5, bounce=0.3, radius=25})
end
