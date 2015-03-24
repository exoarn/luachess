Piece = {}
function Piece.new()
	local self = {}
	self.nr_of_moves = 0
	local nr_of_moves = 0
	
	function self.identify()
		print("I'm am a general piece, or a Piece without Identify functionality!")
	end

	return self
end


Pawn = {}
function Pawn.new()
	local self = Piece.new()
	

	function self.identify()
		print("I am a Pawn")
	end

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
