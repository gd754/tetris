local utils = require("utils")

local bgMap = {
	{5,3,3,3,3,3,3,3,3,3,3,6},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{1,0,0,0,0,0,0,0,0,0,0,2},
	{7,4,4,4,4,4,4,4,4,4,4,8},
}

local spriteSize = 32

local xSize = 10
local ySize = 20

sprites = love.graphics.newImage("assets/sprites.png")

blockSprite = getSprite(1, 0, sprites)
leftWallSprite = getSprite(3, 2, sprites)
rightWallSprite = getSprite(4, 2, sprites)
topWallSprite = getSprite(0, 3, sprites)
bottomWallSprite = getSprite(1, 3, sprites)
-- leftWallSpritgcce = getSprite(3, 2, sprites)
-- leftWallSprite = getSprite(3, 2, sprites)
starryBg = getSprite(2, 3, sprites)

function drawSprite(spriteToDraw, x, y)
	love.graphics.draw(sprites, spriteToDraw, x, y)
end

function love.load()
	love.window.setMode(600, ySize * spriteSize + spriteSize * 2, {resizable=true, vsync=0, minwidth=400, minheight=300})
end

function love.draw()
	--love.graphics.draw(sprites, blockSprite, 100, 200)
	drawSprite(leftWallSprite, 0, spriteSize)
	drawSprite(leftWallSprite, 0, spriteSize*2)
	drawSprite(leftWallSprite, 0, spriteSize*3)
	drawSprite(leftWallSprite, 0, spriteSize*4)

	drawSprite(rightWallSprite, spriteSize*5, spriteSize)
	drawSprite(rightWallSprite, spriteSize*5, spriteSize*2)
	drawSprite(rightWallSprite, spriteSize*5, spriteSize*3)
	drawSprite(rightWallSprite, spriteSize*5, spriteSize*4)

	drawSprite(bottomWallSprite, spriteSize, spriteSize * 4)
	drawSprite(bottomWallSprite, spriteSize*2, spriteSize* 4)
	drawSprite(bottomWallSprite, spriteSize*3, spriteSize* 4)
	drawSprite(bottomWallSprite, spriteSize*4, spriteSize* 4)

	drawSprite(topWallSprite, spriteSize, 0)
	drawSprite(topWallSprite, spriteSize * 2, 0)
	drawSprite(topWallSprite, spriteSize * 3, 0)
	drawSprite(topWallSprite, spriteSize * 4, 0)

	-- drawBg()
end

function drawBg()
	for i = 1, xSize + 2 do
		for j = 1, ySize + 2 do
			
			print(bgMap[i][j])
			spriteToDraw = starryBg
			
			if bgMap[i][j] == 1 then
				spriteToDraw = leftWallSprite
			elseif bgMap[i][j] == 2 then
				spriteToDraw = rightWallSprite
			elseif bgMap[i][j] == 3 then
				spriteToDraw = topWallSprite
			elseif bgMap[i][j] == 4 then
				spriteToDraw = bottomWallSprite
			end

			drawSprite(leftWallSprite, i * spriteSize, j * spriteSize)
			j = j + 1
		end
		i = i + 1
	end
end