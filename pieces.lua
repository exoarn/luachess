Piece = {}
function Piece.new(color)
	local self = {}
	self.nr_of_moves = 0

	self.color = color or "black"
	self.name = "Piece"
	
	function self.identify()
		return self.name , self.color
	end

	return self
end


Pawn = {}
function Pawn.new(color)
	local self = Piece.new(color)
	self.name = "Pawn"

	return self
end 

Rook = {}
function Rook.new(color)
	local self = Piece.new(color)
	self.name = "Rook"
	
	return self
end 

Knight = {}
function Knight.new(color)
	local self = Piece.new(color)
	self.name = "Knight"
	
	return self
end 

Bishop = {}
function Bishop.new(color)
	local self = Piece.new(color)
	self.name = "Bishop"
	
	return self
end 

King = {}
function King.new(color)
	local self = Piece.new(color)
	self.name = "King"
	
	return self
end 


Queen = {}
function Queen.new(color)
	local self = Piece.new(color)
	self.name = "Queen"
	
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
