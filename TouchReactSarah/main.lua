-----------------------------------------------------------------------------------------
-- Tittle: Buttons in lua
-- Name: Sarah
--Course: ICS20/3C
-- This program does something when I click on the button.
-----------------------------------------------------------------------------------------

-- set background color
display.setDefault ("background", 240/255, 240/255, 255/255)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue botton, set is poisition and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create text object, set its position and make it invisble 
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (0, 0, 0)
textObject.isVisible = false

---------------------------------
-- Add sound to the program
-------------------------------
local correctSound = audio.loadSound("Sounds/CorrectAnswerSoundEffect.mp3")
local correctSoundChannel 

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when the blue button is clicked, it will make the text appear with the red button,
-- and mae the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
	 	blueButton.isVisible = false
	 	redButton.isVisible = true
	 	textObject.isVisible = true
        correctSoundChannel = audio.play(correctSound)
    end

   if (touch.phase == "ended") then
    	blueButton.isVisible = true
    	redButton.isVisible = false
    	textObject.isVisible = false
    end 
end

local function RedButtonListener(touch)
	if (touch.phase == "began") then
	 	blueButton.isVisible = true
	 	redButton.isVisible = false
	 	textObject.isVisible = false
	 	local Sound
    end

   if (touch.phase == "ended") then
    	blueButton.isVisible = true
    	redButton.isVisible = false
    	textObject.isVisible = true
    end 
end

-- add the respecive listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)

