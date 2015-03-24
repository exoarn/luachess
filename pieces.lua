Piece = {}
function Piece.new()
	local self = {}
	self.nr_of_moves = 0

	self.color = "black"
	self.name = "Piece"
	
	function self.identify()
		return self.name , self.color
	end

	return self
end


Pawn = {}
function Pawn.new()
	local self = Piece.new()
	self.name = "Pawn"

	return self
end 

Rook = {}
function Rook.new()
	local self = Piece.new()
	return self
end 

Knight = {}
function Rook.new()
	local self = Piece.new()
	return self
end 

Bishop = {}
function Bishop.new()
	local self = Piece.new()
	return self
end 

King = {}
function King.new()
	local self = Piece.new()
	return self
end 


Queen = {}
function Queen.new()
	local self = Piece.new()
	return self
end 

local Pieces = {}
Pieces.Pawn = Pawn
Pieces.Rook = Rook
Pieces.Knight = Knight
Pieces.Bishop = Bishop
Pieces.King = King
Pieces.Queen = Queen
return Pieces 
