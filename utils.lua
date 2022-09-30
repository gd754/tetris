function getSprite(i, j, spritesheet)
	return love.graphics.newQuad(i * 32, j * 32, 32, 32, spritesheet)
end
