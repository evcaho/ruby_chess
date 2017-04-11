class Board
	def initialize(piece)
		@piece = piece
	end

	def main
		puts "Where to go"
		user_input = gets.chomp

		if user_input != "exit"
			legal?(user_input)
		else
			puts "exit"
		end
	end

	def legal?(to_move)
		if @piece.legal_moves.include?(to_move)
			return true
		else
			return false
		end
	end
end

class Piece
	attr_accessor :legal_moves

	def initialize
		@start_location = "D1"
		@legal_moves = ["D2", "D3", "D4"]
		@move_rules = move_rules
	end

	def move_rules
		new_spots = []
		legal_moves.each do |cell|
			move_array = cell.split ""
			new_location = (move_array.at(0) + (((move_array.at(1).to_i) + 1).to_s))
			new_spots.push(new_location)
		end
		@legal_moves.replace(new_spots)
	end

	def change_start(move)
		#take legal_moves, take move, chanve start location to D4 or whatever
		#change legal moves 
	end

end


board = Board.new(Piece.new())
piece = Piece.new()
puts piece.move_rules




