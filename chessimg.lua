local ChessImg = {}

ChessImg.white = {}
ChessImg.black = {}
ChessImg.img = love.graphics.newImage("Images/Pieces_tiled.png")

ChessImg.white.Rook   = love.graphics.newQuad(0   ,11 , 64, 64, ChessImg.img:getDimensions())
ChessImg.white.Bishop = love.graphics.newQuad(59  ,11 , 64, 64, ChessImg.img:getDimensions())
ChessImg.white.Queen  = love.graphics.newQuad(119 ,11 , 64, 64, ChessImg.img:getDimensions())
ChessImg.white.King   = love.graphics.newQuad(180 ,11 , 64, 64, ChessImg.img:getDimensions())
ChessImg.white.Knight = love.graphics.newQuad(241 ,11 , 64, 64, ChessImg.img:getDimensions())
ChessImg.white.Pawn   = love.graphics.newQuad(300 ,11 , 64, 64, ChessImg.img:getDimensions())

ChessImg.black.Rook   = love.graphics.newQuad(0   ,85 , 64, 64, ChessImg.img:getDimensions())
ChessImg.black.Bishop = love.graphics.newQuad(59  ,85 , 64, 64, ChessImg.img:getDimensions())
ChessImg.black.Queen  = love.graphics.newQuad(119 ,85 , 64, 64, ChessImg.img:getDimensions())
ChessImg.black.King   = love.graphics.newQuad(180 ,85 , 64, 64, ChessImg.img:getDimensions())
ChessImg.black.Knight = love.graphics.newQuad(241 ,85 , 64, 64, ChessImg.img:getDimensions())
ChessImg.black.Pawn   = love.graphics.newQuad(300 ,85 , 64, 64, ChessImg.img:getDimensions())

return ChessImg
