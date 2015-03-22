Pieces = require("pieces")

local Board = {}

function Board.new()
	local self = {}
	
	for i = 1, 8 do
		self[i] = {}
		for j = 1, 8 do
			local tile = {}
			tile.color = ( (j+i) % 2 == 0) and "dark" or "light"
			tile.highlighted = false
			self[i][j] = tile
		end
	end
	
	function self.fill()
		self[2][2] = Pieces.Pawn.new()
	end

	function self.identify_piece(pos)
		x = pos.x
		y = pos.y

		self[x][y].identify()
	end

	function self.draw(start_x, start_y)
		local dark_rgb  = {0, 100, 100} --rgb value
		local light_rgb = {0, 200, 200}
		
		local x = start_x or 0
		local y = start_y or 0

		local square_size = 64 --px
	
		for i = 1, #self do
			for j = 1, #self[i] do
				
				if self[i][j].color == "dark" then
					love.graphics.setColor(unpack(dark_rgb))
				else
					love.graphics.setColor(unpack(light_rgb))
				end

				love.graphics.rectangle('fill', x, y, 
								square_size, square_size);
				x = x + square_size
			end

			y = y + square_size
			x = start_x or 0

		end
	end
	
	
	
	
	self.fill()

	return self
end

return Board
