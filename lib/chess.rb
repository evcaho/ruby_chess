class TextUI
	def initialize(terminal)
		@terminal = terminal
	end

	def exit_game
		user_input = @terminal.read
		if user_input == "exit"
			@terminal.write("exit") 
		else
			end_text = end_coordinates(user_input)
			@terminal.write(end_text)
		end
	end

	def end_coordinates
		input_array = text.split()
		input_array.last
	end
	def beg_coordinates
		text = @terminal.read
		@terminal.write(text)
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

