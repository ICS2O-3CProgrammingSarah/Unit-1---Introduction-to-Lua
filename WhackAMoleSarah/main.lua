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
local pony = display.newImage( "Images/pony.png", 0, 0 )
  -- set the position
  pony.x = display.contentCenterX
  pony.y = display.contentCenterY

  --scale the pony
  pony:scale( 0.3, 0.3 )

  -- set the pony to be invisible
  pony.isVisible = false 
