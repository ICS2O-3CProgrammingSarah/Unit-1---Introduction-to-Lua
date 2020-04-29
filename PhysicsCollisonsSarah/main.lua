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
 beam.x = display.contentWidth/2
 beam.y = display.contentHeight/10

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

 bkg.width =  display.contentWidth
 bkg.height =  display.contentHeight
  
  -- send to the back
  bkg:toBack()
  ------------------------------------------------
  --FUNCITION
  -----------------------------------------------------
 -- create the first ball

local function firstBall()
  -- create first ball
  local firtBall = display.newImage("Images/super_ball.png", 0, 0)
    
    firstBall.width = 250
    firstBall.height = 100
    -- add to physics
   
  physics.addBody(ball1, {density=1.0, friction= 0.5, bounce=0.3, radius=25})

end

---------------------------------------------------------------------------------------------------------

local function secondBall()
  --create the second ball
 local secondBall = display.newImage("Images/super_ball.png", 0, 0)

 --add to physics
 physics.addBody(secondBall, {density=3.0, friction=0.7, radius=12.5})
  --scale ball1 to be half its original size.
 ball2:scale(0.5, 0.5)
end 
--------------------------------------------------------------------------------
--TIME DELAYS - call each function after given millisecond
--------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)

