function love.load()
	sprites = love.graphics.newImage("assets/Tetris_Sprites_v2.png")
end

function love.draw()
	love.graphics.draw(sprites, 100, 100)
end
