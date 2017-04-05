class Chessboard
	def initialize
		@rows = [1, 2, 3,4,5,6,7,8]
		@columns = ["a", "b", "c", "d", "e", "f", "g", "h"]
		board = build_board
	end

	def black_on_white(text)
		"\e[30m\e[47m#{text}\e[0m"
	end

	def white_on_black(text)
		"\e[47m\e[40m#{text}\e[0m"
	end

	def build_board
		item = [0, 3, "WQ"]

		 8.times do |x|
			8.times do |y|
				if (x+y) % 2 == 1
						print white_on_black("  ")
				else
					print black_on_white("  ")
				end
			end
			puts	
		end
	end



end

chess = Chessboard.new()


