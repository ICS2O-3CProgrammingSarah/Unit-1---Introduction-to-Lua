-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
---print a greeting to the console
print ("**** Hello Sarah!")

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
	
	--set the number of the colour of the background
display.setDefault ("background",240/255, 230/255, 140/255)
-- create a local variable
  local textObject
  
  -- displays text on the screen at position x = 500 and y = 500 with
  -- a defult font style and font size of 50
  textObject = display.newText ( "Hello, Sarah!", 500, 500, nil, 50)
  -- sets the color of the text
textObject:setTextColor(240/255, 255/255, 240/255)
 
local textObjectSignature

-- display text on the screen at position x= 200 and y= 500
-- a default font style and font size of 50

 textObject = display.newText ( By Sarah 20, 200, nil, 25

