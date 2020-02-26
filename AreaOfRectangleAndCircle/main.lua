-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

-- set background colour of my screen.
display.setDefault("background", 240/255, 248/255, 255/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw a rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)
