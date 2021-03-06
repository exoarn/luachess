Pieces = require("pieces")
Board_module = require("board")

selected_piece = false

function love.load()
    Board = Board_module.new()
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
		
		if  (i <= 8 and j <= 8) then
			if selected_piece then
				Board.move_piece(selected_piece.origin, {x=i, y=j})
				selected_piece = false
			elseif Board[i][j].occupant then
				--print("Highlight: ", Board[i][j].highlight )
				--Board[i][j].highlight = not Board[i][j].highlight
				selected_piece = Board[i][j].occupant
				selected_piece.origin = {x=i, y=j}
			end
		end

	end
end


function love.draw()
    Board.draw()
end
