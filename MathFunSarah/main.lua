-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local function AskQuestion()
	-- generate a random number between 1 and 2
	--**Make sure to declare this variable above
	randomOperator = math.random(0, 4)
	-- generate 2 random numbers
	randomNumber1 = math.random(0, 4)
	randomNumber2 = math.random(0, 4)

	-- if random operator is 1, then do addition
	if (randomOperator == 1 ) then

	-- calculate the correct answer
	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text object
	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "
	--otherwise, if the random oprator is 2, do subtraction
  elseif (randomOperator == 2) then
     -- calculate the correct answer
     correctAnswer = randomNumber1 - randomNumber2

     -- create question im text object
     questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
   end
end





