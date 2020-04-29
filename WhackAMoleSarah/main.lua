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

 -- add background music
 local ponyMusic = audio.loadStream("Sound/ponyMusic.mp3.mp3")
 audio.play(ponyMusic, {loop = -1})
 

 --set the colour of the background
 display.setDefault("background", 127/255, 255/255, 212/255)

-- Creating image
local pony = display.newImage( "Images/pony.png", 0, 0 )
  -- set the position
  pony.x = display.contentCenterX
  pony.y = display.contentCenterY

  --scale the pony
  pony:scale( 0.3, 0.3 )

  -- set the pony to be invisible
  pony.isVisible = false 
  --store the pointds
  local score = 0
  local scoreText

-------------------------------------------------------FUNCTIONS-------------------------------------------------------------------
-- This function makes the mole appear in a random (x,y) position on the screen
-- Before calling  HideFunction
function PopUp()
  --Choose a random position on the screen between 0 and the size of the screen
  pony.x = math.random( 0, display.contentWidth )
  pony.y = math.random( 0, display.contentHeight )

  -- Make the mole visible
  pony.isVisible = true 
 
  -- call the hide function after 5000
  timer.performWithDelay( 900, Hide)
end 

-- This function calls the PopUp function after 3 seconds
function PopUpDelay( )
  timer.performWithDelay( 3000, PopUp )
end 

--This function makes the mole invisble and then calls the PopUpDelay function function_name( ... )
function Hide( )
  
  -- Change Visbillity
  pony.isVisble = false

  --Call the function PopUpDelay function
  PopUp()
end 

-- This function starts the game
function GameStarts( )
  PopUpDelay()
end 

--------------------------------------------------
--ADD SOUND
---------------------------------------------------

local whackSound = audio.loadStream("Sound/whack.mp3")
local whackSoundChannel

--This function incerements the score only if the mole is click. It then displays the
-- new score.
function Whacked( event )
  --If touch phase just started
  if (event.phase == "began") then
    --Increases point by 1
    score = score + 1
    --Display the score text
    scoreText.text = "score = " .. score
    whackSoundChannel = audio.play( whackSound )

  end

end 

---------------------------------OBJECT CREATION--------------------------------
---
------------------------------------------------------------------------------
--display the amount of points as a text object
scoreText = display.newText("Score = " .. score, 150, 33, nil, 50)
scoreText:setTextColor(91/255, 91/255, 91/255)
scoreText.isVisible = true

----------------------------Event Listeners --------------------------------------
-- I add the event listener to the moles so that if the mole is touched, the Whacked function function_name( ... )
-- is called
pony:addEventListener( "touch", Whacked)

----------------------------Start the game------------------------------------------
GameStarts()



  
