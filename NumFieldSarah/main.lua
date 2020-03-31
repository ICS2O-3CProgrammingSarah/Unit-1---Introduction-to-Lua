-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
-- Title: NumericTextFields
-- Name: Sarah
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in a numeric textfield.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set the backgroud color
display.setDefault("background", 0/255, 191/255, 255/255)

--------------------------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------------------------

-- create local varables
local questionObject
local correctObject
local numericTextFields
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectAnswer
local incorrectObject
-------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-------------------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 randon numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text object
	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "
end 

local function HideCorrect()
	correctObject.isVisible = false
	AskQuesion()
end 

local function NumberFieldListener( event )
	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""

   elseif ( event.phase == "submitted") then
		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if user answers and correct answer are the same
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			timer.performWithDelay(3000, HideCorrect)
		end
	end
end

--------------------------------------------------------------------------------
-- OBJECT CREATION
--------------------------------------------------------------------------------

-- display a question and sets the color
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2.5, nil, 50 )
questionObject:setTextColor(155/255, 42/255, 198/255)

-- create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(25/255, 51/255, 0/255)
correctObject.isVisible = true


-- create the correct text object and make it invisible
incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
incorrectObject:setTextColor(25/255, 51/255, 0/255)
incorrectObject.isVisible = true

-- Create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

-- call the function to ask the question
AskQuestion()

-- display the amount of points as a text object
pointsText = display.newText("Points = " .. points, display.contentWidth/3, display.contentHeight/3, nil, 50)

if (userAnswer == correctAnswer) then
	-- give a point if the user gets the correct answer
	points = points + 1

	-- update in display object
	pointsText.text = "Points = " .. points
end 

-------------------------------------------------------------------
--LOCAL VARIABLE a
--------------------------------------------------------------------


   