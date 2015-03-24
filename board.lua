Pieces = require("pieces")
ChessImg = require("chessimg")

local Board = {}

function Board.new()
	local self = {}

	local square_size = 64 --px

	for i = 1, 8 do
		self[i] = {}
		for j = 1, 8 do
			local tile = {}
			tile.color = ( (j+i) % 2 == 0) and "light" or "dark"
			tile.highlighted = false
			tile.occupant = false
			self[i][j] = tile
		end
	end
	
	function self.fill()
		self[2][2].occupant = Pieces.Pawn.new("white")
	end

	function self.identify_piece(pos)
		x = pos.x
		y = pos.y

		self[x][y].occupant.identify()
	end

	function self.draw(start_x, start_y)
		self.draw_tiles(start_x, start_y)
		self.draw_pieces(start_x, start_y)
	end

	function self.draw_pieces(start_x, start_y)
		x = start_x or 0
		y = start_y or 0

		for i = 1, #self do
			for j = 1, #self[i] do
				if self[i][j].occupant then
					local piece = {}
					piece.identity, piece.color = 
								self[i][j].occupant.identify()
					piece.quad = ChessImg[piece.color][piece.identity] 
					love.graphics.draw(ChessImg.img, piece.quad,
									(i*square_size + x),
									(j*square_size + y))
				end

			end
		end
	end


	function self.draw_tiles(start_x, start_y)
		local dark_rgb  = {0, 100, 100} --rgb value
		local light_rgb = {0, 200, 200}
		
		local x = start_x or 0
		local y = start_y or 0

		
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
