-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--add background sound
local ball = audio.loadStream( "Sounds/ball.mp3.mp3")
audio.play(ball, {loops = -1})

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
local beam = display.newImage("Images/beam.png", 0, 0)

-- set the x and y position
 beam.x = display.contentCenterX/5
 beam.y = display.contentCenterY*1.65

  --change the width to be half of the iPad screen
 beam.width = display.contentWidth/2
 beam.height = display.contentHeight/10

 --
 beam.height = display.contentHeight*.10

 -- rotate the beam -60 degrees so its on an angle
 beam:rotate(45)

 -- send it to the back layer
 beam:toBack()

 -- add to physics
 physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-- display the bean image
local secondBeam = display.newImage("Images/beam.png", 0, 0)

-- set the x and y position
 secondBeam.x = 921.6
 secondBeam.y = display.contentCenterY*1.65

  --change the width to be half of the iPad screen
 secondBeam.width = display.contentWidth/2
 secondBeam.height = display.contentHeight/10

 --
 secondBeam.height = display.contentHeight*.10

 -- rotate the beam -60 degrees so its on an angle
 secondBeam:rotate(-45)

 -- send it to the back layer 
 secondBeam:toBack()

 -- add to physics
 physics.addBody(secondBeam, "static", {friction=0.5, bounce=0.3})

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
  local ball1 = display.newImage("Images/super_ball.png", 0, 0)
  
  --add to physics
  physics.addBody(ball1, {density=1.0, friction= 0.5, bounce=0.3, radius=25})

end

---------------------------------------------------------------------------------------------------------

local function secondBall()
  --create the second ball
 local ball2 = display.newImage("Images/super_ball.png", 0, 0)

 --add to physics
 physics.addBody(ball2, {density=3.0, friction=0.7, radius=12.5})
  
  --scale ball1 to be half its original size.
 ball2:scale(0.5, 0.5) 
end

local function thirdBall()
  -- create first ball
  local ball3 = display.newImage("Images/super_ball.png", 0, 0)
  
  --change its location
  ball3.x = 900
  ball3.y = 350

  --add to physics
  physics.addBody(ball3, {density=1.0, friction= 0.5, bounce=0.3, radius=35})

end

--------------------------------------------------------------------------------
--TIME DELAYS - call each function after given millisecond
--------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 500, thirdBall)

