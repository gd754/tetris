local utils = require("utils")

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
	love.window.setMode(600, ySize * 32 + 32 * 2, {resizable=true, vsync=0, minwidth=400, minheight=300})
end

function love.draw()
	love.graphics.draw(sprites, blockSprite, 100, 200)
	drawSprite(leftWallSprite, 0, 0)
	drawSprite(rightWallSprite, 32 * 4, 0)
	drawSprite(topWallSprite, 0, 0)

	for i = 1, 10 do
		for j = 1, 20  do
			drawSprite(starryBg, i * 32, j * 32)
			j = j + 1
		end
		i = i + 1
	end
end
