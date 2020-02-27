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
-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangleY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

-- set the color of the border
myRectangle:serStrokeColor(0, 1, 0)

-- calculate the area
areOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take in the size of the font when positioning it on the screen
areaText = display.NewText(" The area of this rectangle with a of \n"..
   widthOfRectangle .." and a height of " .. heightOfRectangle .. " is  ..
   areaOfRectangle .." pixels².", 0,0 Arial, textSize)

-- anchor the text and sit its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- ser the cokour of newText
areaText:setTextColor(1, 1, 1)
