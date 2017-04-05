class TextUI
	def initialize(terminal)
		@terminal = terminal
	end

	def exit_game
		user_input = @terminal.read
		if user_input == "exit"
			@terminal.write("exit") 
		else
			beg_coordinates(user_input)
		end
	end

	def end_coordinates
		input_array = text.split()
		input_array.last
	end
	def beg_coordinates(text)
		text_array = text.split()
		@terminal.write(text_array.first)
	end

end

class Terminal
	def read
		gets.chomp
	end
	def write(text)
		text
	end
end

textui = TextUI.new(Terminal.new())
textui.beg_coordinates("D4 t0")