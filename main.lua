Pieces = require("pieces")
Board_module = require("board")

function love.load()
    Board = Board_module.new()

	--test board initialisation, x=2, y=2 should identify
	--as a Pawn (for now) and print this to stdout
	Board.identify_piece{x = 2, y = 2}

end

function love.update(dt)
end

function love.draw()
    Board.draw()
end
