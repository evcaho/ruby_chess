class Board
	def initialize
		@legal_moves = ["D2", "D3", "D4", "D5"]
		@start_move = start_move
	end

	def legal?(to_move)
		if @legal_moves.include?(to_move)
			return true
		else
			return false
		end
	end
end


board = Board.new("D1")
puts board.legal?("D9")





