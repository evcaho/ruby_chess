class TextUI
	def initialize(terminal)
		@terminal = terminal
	end

	def main
		puts "Welcome"
		user_input = @terminal.read

		while user_input != "exit"
			run_game(user_input)
			user_input = @terminal.read
		end
		@terminal.write("exit")
	end

	def run_game(user_input)
		if is_legal?(start_move(user_input), end_move(user_input)) 
			@terminal.write("Moved from #{start_move(user_input)} to #{end_move(user_input)}")
		
		else
			@terminal.write("illegal")
		end

	end

	def coordinate_array(text)
		text.split()
	end

	def end_move(text)
		coordinate_array(text).last
	end
	def start_move(text)
		coordinate_array(text).first
	end

	def is_legal?(first_move, second_move)
		legal_moves = ["D4", "D5", "D6", "D7"]
		if legal_moves.include?(first_move) && legal_moves.include?(second_move)
			return true
		end

	end

end

class Terminal
	def read
		gets.chomp
	end
	def write(text)
		puts text
	end
end


