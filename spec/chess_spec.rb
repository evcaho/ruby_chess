require "chess"

describe TextUI do
	before do 
		@terminal = Terminal.new()
		@textui = TextUI.new(@terminal)
	end

	describe "#run_game" do
		it "prints 'exit' when input 'exit'" do
			expect(@terminal).to receive(:read).and_return("exit")
			expect(@terminal).to receive(:write).with("exit")
			@textui.run_game
		end
		it "prints move" do
			expect(@terminal).to receive(:read).and_return("D4 to D7")
			expect(@terminal).to receive(:write).with("Moved from D4 to D7")
			@textui.run_game
		end
		it "illegal move" do
			expect(@terminal).to receive(:read).and_return("D2 to infinity")
			expect(@terminal).to receive(:write).with("illegal")
			@textui.run_game
		end
	end



end