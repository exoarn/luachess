local ChessImg = {}

ChessImg.white = {}
ChessImg.black = {}
ChessImg.img = love.graphics.newImage("Images/Pieces_tiled.png")

ChessImg.white.rook   = love.graphics.newQuad(0   ,11 , 64, 64, img:getDimensions())
ChessImg.white.bishop = love.graphics.newQuad(59  ,11 , 64, 64, img:getDimensions())
ChessImg.white.queen  = love.graphics.newQuad(119 ,11 , 64, 64, img:getDimensions())
ChessImg.white.king   = love.graphics.newQuad(180 ,11 , 64, 64, img:getDimensions())
ChessImg.white.knight = love.graphics.newQuad(241 ,11 , 64, 64, img:getDimensions())
ChessImg.white.pawn   = love.graphics.newQuad(300 ,11 , 64, 64, img:getDimensions())

ChessImg.black.rook   = love.graphics.newQuad(0   ,85 , 64, 64, img:getDimensions())
ChessImg.black.bishop = love.graphics.newQuad(59  ,85 , 64, 64, img:getDimensions())
ChessImg.black.queen  = love.graphics.newQuad(119 ,85 , 64, 64, img:getDimensions())
ChessImg.black.king   = love.graphics.newQuad(180 ,85 , 64, 64, img:getDimensions())
ChessImg.black.knight = love.graphics.newQuad(241 ,85 , 64, 64, img:getDimensions())
ChessImg.black.pawn   = love.graphics.newQuad(300 ,85 , 64, 64, img:getDimensions())

return ChessImg
