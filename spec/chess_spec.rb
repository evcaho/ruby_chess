require "chess"

describe TextUI do
	before do 
		@terminal = Terminal.new()
		@textui = TextUI.new(@terminal)
	end

	describe "#run_game" do
		it "prints move" do
			expect(@terminal).to receive(:write).with("Moved from D4 to D7")
			@textui.run_game("D4 to D7")
		end
		it "illegal move" do
			expect(@terminal).to receive(:write).with("illegal")
			@textui.run_game("D2 to infinity")
		end
	end

	describe "#main" do
		it "exits" do
			expect(@terminal).to receive(:read).and_return("exit")
			expect(@terminal).to receive(:write).with("exit")
			@textui.main
		end
	end



end