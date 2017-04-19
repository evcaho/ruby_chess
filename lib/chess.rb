
class TextUI
	def initialize(terminal, board)
		@terminal = terminal
		@board = board
	end

	def main
		current_player = "white"
		while turn(current_player)
			if current_player == "white"
				current_player == "black"
			else
				current_player == "white"
			end

			
		end
		@terminal.write("exit")
	end

	def turn(current_player)
		@terminal.write("#{current_player} input move")
		user_input = @terminal.read
		if user_input == "exit".downcase
			return false
		elsif user_input == "save"
			save
			return true
		else
			@terminal.write("#{current_player} moves #{user_input}.")
			return true
		end
	end

	def save
		@terminal.write("Saved")
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
