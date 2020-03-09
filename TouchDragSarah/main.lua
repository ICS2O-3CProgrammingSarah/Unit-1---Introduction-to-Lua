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
local planetHeight = planet.height

-- my boolen variables to keep track of which object I touched first
local alreadyTouchedGirl2 = false
local alreadyTouchedPlanet = false
local alreadyTouchedGirl3 = false

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
	  if (alreadyTouchedPlanet == false) then
	      alreadyTouchedGirl2 = true
    end end

    if ( ( touch.phase == "moved") and (alreadyTouchedGirl2 == true) ) then
  	  girl2.x = touch.x
  	  girl2.y = touch.y
  end 

   if (touch.phase == "ended") then
   	 alreadyTouchedGirl2 = false
   	 alreadyTouchedPlanet = false
   	end 
end 

-- add the respective listeners to each object
girl2:addEventListener("touch", Girl2Listener)

-- do planet thingy
	local function planetListener(touch)

	if (touch.phase == "began") then
	   if (alreadyTouchedGirl2 == false) then
	      alreadyTouchedPlanet = true
	  end
   end 
   

    if ( (touch.phase == "moved") and (alreadyTouchedPlanet == true) ) then
  	  planet.x = touch.x
  	  planet.y = touch.y
  end 

   if (touch.phase == "ended") then
   	 alreadyTouchedPlanet = false
   	 alreadyTouchedGirl2 = false
   end 
end 

-- add the respective listeners to each object
planet:addEventListener("touch", planetListener)

-- add 3rd image 
local girl3 = display.newImageRect("Images/girl3.png", 150, 150)
local girl3Width = girl3.width
local girl3Height = girl3.height 

-- set the positions
girl3.x = 200
girl3.y = 300

-- do girl thingy
  local function Girl3Listener(touch)

  if (touch.phase == "began") then
     if (alreadyTouchedGirl3 == false) then
        alreadyTouchedPlanet = true
    end  
end 
   

    if ( (touch.phase == "moved") and (alreadyTouchedPlanet == true) ) then
      girl3.x = touch.x
      girl3.y = touch.y
  end 

   if (touch.phase == "ended") then
     alreadyTouchedGirl3 = false
     alreadyTouchedGirl3 = false
   end 
end 