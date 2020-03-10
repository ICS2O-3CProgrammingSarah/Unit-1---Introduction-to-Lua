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


-- character image with width and height
local girl2 = display.newImageRect("Images/girl2.png", 200, 200)

-- character image to be transparent
girl2.alpha = 1

-- set the inital x and  position of beetleship
girl2.x = 1024
girl2.y = display.contentHeight/1.5

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to te x-value of the ship

local function MoveShip(event)
	-- add the scroll speed to x-value of the ship
	girl2.x = girl2.x - scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	girl2.alpha = girl2.alpha - 0.001
end 

-- Moveship will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)