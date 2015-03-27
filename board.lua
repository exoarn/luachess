Pieces = require("pieces")
ChessImg = require("chessimg")

local Board = {}

function Board.new()
	local self = {}

	local square_size = 64 --px
	local x_offset = 0
	local y_offset = 0 

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
		order_of_pieces = { "Rook", "Knight", "Bishop", "Queen",
							"King", "Bishop", "Knight", "Rook"}
		-- Create white pieces
		for i = 1, 8 do
			-- First create the row of pawns
			self[i][7].occupant = Pieces.Pawn.new("white")
		end
		-- On the next row all pieces in order of order_of_pieces
		for i,piece in ipairs(order_of_pieces) do
			self[i][8].occupant = Pieces[piece].new("white")
		end
		-- Same for black
		for i = 1, 8 do
			self[i][1].occupant = Pieces.Pawn.new("black")
		end
		for i,piece in ipairs(order_of_pieces) do
			self[i][2].occupant = Pieces[piece].new("black")
		end
	end

	function self.identify_piece(pos)
		x = pos.x
		y = pos.y
		if self[x][y].occupant then
			return self[x][y].occupant.identify()
		else
			return false
		end

	end

	function self.draw()
		self.draw_tiles()
		self.draw_pieces()
	end

	function self.draw_pieces()
		x = x_offset or 0
		y = y_offset or 0

		for i = 1, #self do
			for j = 1, #self[i] do
				if self[i][j].occupant then
					local piece = {}
					piece.identity, piece.color = 
								self[i][j].occupant.identify()
					piece.quad = ChessImg[piece.color][piece.identity] 
					love.graphics.draw(ChessImg.img, piece.quad,
									((i-1)*square_size + x),
									((j-1)*square_size + y))
				end

			end
		end
	end


	function self.draw_tiles()
		local dark_rgb  = {0, 100, 100} --rgb value
		local light_rgb = {0, 200, 200}
		
		local x = x_offset or 0
		local y = y_offset or 0

		
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
			x = x_offset or 0

		end
	end
	
	function self.move_piece(pos1, pos2)
		if not (pos1.x and pos1.y and pos2.x and pos2.y) then
			error("Incorrect arguments, pos1 and pos2 must be tables with x and y values")
		end

		if self[pos2.x][pos2.y].occupant then
			--A piece is captured
			-- TODO
			print("Capture!")
		end

		-- move piece to new position
		self[pos2.x][pos2.y].occupant = self[pos1.x][pos1.y].occupant
		-- clear old position
		self[pos1.x][pos1.y].occupant = false
	end	
	
	self.fill()

	return self
end

return Board
