-----------------------------------------------------------------------------------------
--Tittle: Local variables
--Name: Sarah
-- Course: ICS20/3C
-- This program displays a rectangle and shows its area
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- create my local variables
local areaText
local textSize = 50
local widthOfRectangle = 300
local heightOfRectangle = 200
local areaOfRectangle
local PI = 3.14
local radiusOfCircle = 500
local mycircle
local areaOfCircle
local circleAreaText = 50

-- set background colour of my screen. Remember that colors are between 0 and 1.
display.setDefault("background", 255/255, 228/255, 225/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the witdh and height of the screen size.
myRectangle = display.newRect(0,0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle.strokeWidth = 20

-- set the colour of the rectangle
myRectangle:setFillColor(0.7,0.1,0.3)
-- set the colour of the rectangle
myRectangle:setStrokeColor(0,1,0)

-- calucate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration of the size of the font when positioning it on the screen.
areaText = display.newText("The area of this rectangle with a width of \n" .. widthOfRectangle .. "and a height of " .. heightOfRectangle .. " is " .. areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.X = 20
areaText.y = display.contentHeight/2

-- set the color of newText
areaText:setTextColor(1,1,1)

 -- draw cirlce
 local myCircle = display.newCircle ( 700, 700, 130)

 -- anchor the circle in the top right corner of the screen and set its axix (x,y)
 myCircle.anchorX = 0
 myCircle.anchorY = 0
 myCircle.x = 720
 myCircle.y = 20

 -- set the colour of the circle
 myCircle:setFillColor(0.7,0.1,0.3)

-- set color of the circle
myCircle.strokeWidth = 20

-- calucate the area
 areaOfCircle = PI * radiusOfCircle * radiusOfCircle

 -- display nex text of the area
  circleAreaText = display.newText("The area of this circle with a radius of \n" .. radiusOfCircle ..  " is " .. areaOfCircle .. " pixels².", 450, 600, Arial, textSize)
 