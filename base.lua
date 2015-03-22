Pieces = require("pieces")

local Board = {}

function Board.new()
	local self = {}
	
	for i = 1, 8 do
		self[i] = {}
	end
	
	function self.fill()
		self[2][2] = Pieces.Pawn.new()
	end

	self.fill()

	return self
end

return Board
