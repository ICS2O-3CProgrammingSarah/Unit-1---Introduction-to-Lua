-----------------------------------------------------------------------------------------
--Title: Images and Global Variable
-- Name: Sarah
-- Course: ICS20/3C
--This program displays an image hat moves across the screen and then makes it fades in. 
--I added a second object that moves in a different direction,
--fades out and grows in size
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variable
scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("Images/Background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- character image to be transparent
beetleship.alpha = 0

-- set the inital x and  position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to te x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end 

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- set the intial x and y position of the girl
girl1.x = 0
girl1.y= display.contentHeight

-- character image with width and height
local girl1 = display.newImageRect("Images/girl1.png", 200, 200)

local function MoveGirl1(event)
	-- add the scroll speed to x-value of the ship
	girl1.x = girl1.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades in 
	girl1.alpha = girl1.alpha + 0.01
end 
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)