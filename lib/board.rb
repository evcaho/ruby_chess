class Board
	def initialize(piece)
		@piece = piece
	end

	def main
		puts "Where to go"
		user_input = gets.chomp

		if user_input != "exit"
			if legal?(user_input)
				@piece.pawn_move
				puts "Moved to #{@piece.location}. Legal moves are now #{@piece.legal_moves.join("")}"
			end
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
	attr_accessor :legal_moves, :location

	def initialize(name, location, legal_moves)
		@location = location
		@legal_moves = legal_moves
		@name = "pawn"
	end

	def new_legal_moves
		new_moves = []
		@legal_moves.each do |cell|
			move_array = cell.split ""
			new_location = (move_array.at(0) + (((move_array.at(1).to_i) + 1).to_s))
			new_moves.push(new_location)
		end
		@legal_moves.replace(new_moves)
	end

	def pawn_move
		move_array = @location.split ""
		new_location = (move_array.at(0) + (((move_array.at(1).to_i) + 1).to_s))
		new_legal_moves
		@location = new_location
	end

	def change_start(move)
		#take legal_moves, take move, chanve start location to D4 or whatever
		#change legal moves 
	end

end









