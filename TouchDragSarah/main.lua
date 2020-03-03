-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local girl2 = display.newImageRect("Images/girl2.png", 150, 150)
local girl2Width = girl2.width
local girl2Height = girl2.height 

local planet = display.newImageRect("Images/planet.png", 150, 150)
local planetWidth = planet.width
local planeHeight = planet.height

-- my boolen variables to keep track of which object I touched first
local alreadyTouchedgirl2 = false
local alreadyTouchedplanet = false

-- set the intial x and y position of myImage
girl2.x = 400
girl2.y = 500

planet.x = 300
planet.y = 200

-- Function: BlueGirlListener
-- Input: touch BlueGirlListener
-- Output: none
-- Description: when girl2 is touched, move her
local function Girl2Listener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedGirl2 == false) then
	    alreadyTouchedGirl2 = true




