class TextUI
	def initialize(terminal)
		@terminal = terminal
	end

	def exit_game
		puts "Welcome"
		user_input = @terminal.read
		if user_input == "exit"
			@terminal.write("exit") 
		else
			if is_legal?(beg_coordinates(user_input), end_coordinates(user_input)) 
				@terminal.write("Moved from #{beg_coordinates(user_input)} to #{end_coordinates(user_input)}")
			else
				@terminal.write("illegal")
			end
		end
	end

	def end_coordinates(text)
		input_array = text.split()
		input_array.last
	end
	def beg_coordinates(text)
		text_array = text.split()
		text_array.first
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
