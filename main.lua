Pieces = require("pieces")
Board_module = require("board")

selected_piece = false

function love.load()
    Board = Board_module.new()

	--test board initialisation, x=2, y=2 should identify
	--as a Pawn (for now) and print this to stdout
	Board.identify_piece{x=2, y=2}
	Board.move_piece({x=1, y=1}, {x=8, y=8})
end

function love.update(dt)
end

function love.mousepressed(x, y, button)
	if button == 'l' then
		local x_offset, y_offset = Board.get_board_offset()
		local tilesize = Board.get_tilesize()
		
		local i = math.ceil((x - x_offset) / tilesize)
		local j = math.ceil((y - y_offset) / tilesize)

		print("Mousepress,\tx: " .. tostring(x) .. ", y: " .. tostring(y) .. "\n\t\ti: " .. tostring(i) .. ", j:" .. tostring(j))
		
		print("occupant: ",Board[i][j].occupant) 
		
		if (i <= 8 and j <= 8) and Board[i][j].occupant then
			print("Highlight: ", Board[i][j].highlight )
			Board[i][j].highlight = not Board[i][j].highlight  
		end

	end
end


function love.draw()
    Board.draw()
end
