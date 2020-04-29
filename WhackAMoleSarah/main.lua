-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--Title: WhackAMole
-- Name: Sarah
-- Course: ICS2O/3C
-- This program makes an object appear on the screen for an amount of time and then disappears
--if the user clicks on the object, his or her score increases by 1.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create the background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )

  --set the colour of the background
 display.setDefault("background", 255/255, 228/255, 225/255)

  -- setting position
  bkg.anchorX = 0
  bkg.anchorY = 0
  bkg.x = 0
  bkg.y = 0

-- Creating image
local mole = display.newImage( "Images/mole.png", 0, 0 )
  -- set the position
  mole.x = display.contentCenterX
  mole.y = display.contentCenterY

  --scale the pony
  mole:scale( 0.3, 0.3 )

  -- set the pony to be invisible
  mole.isVisible = false 
  --store the pointds
  local score = 0
  local scoreText

-------------------------------------------------------FUNCTIONS-------------------------------------------------------------------
-- This function makes the mole appear in a random (x,y) position on the screen
-- Before calling  HideFunction
function PopUp()
  --Choose a random position on the screen between 0 and the size of the screen
  mole.x = math.random( 0, display.contentWidth )
  mole.y = math.random( 0, display.contentHeight )

  -- Make the mole visible
  mole.isVisible = true 
 
  -- call the hide function after 5000
  timer.performWithDelay( 5000, mole)
end 

-- This function calls the PopUp function after 3 seconds
function PopUpDelay( )
  timer.performWithDelay( 3000, PopUp )
end 

--This function makes the mole invisble and then calls the PopUpDelay function function_name( ... )
function Hide( )
  
  -- Change Visbillity
  mole.isVisble = false

  --Call the function PopUpDelay function
  PopUp()
end 

-- This function starts the game
function GameStarts( )
  PopUpDelay()
end 

--This function incerements the score only if the mole is click. It then displays the
-- new score.
function Whacked( event )
  --If touch phase just started
  if (event.phase == "began") then
    --Increases point by 1
    score = score + 1
    --Display the score text
    scoreText = "score = " .. score
    -- add timer
    timer.performWithDelay(2000, HidePoints)
  end

end 
--display the amount of points as a text object
scoreText = display.newText("score = " .. score, 150, 33, nil, 50)

----------------------------Event Listeners --------------------------------------
-- I add the event listener to the moles so that if the mole is touched, the Whacked function function_name( ... )
-- is called
mole:addEventListener( "touch", Whacked)

----------------------------Start the game------------------------------------------
GameStarts()



  
