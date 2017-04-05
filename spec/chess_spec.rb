require "chess"

describe TextUI do
	before do 
		@terminal = Terminal.new()
		@textui = TextUI.new(@terminal)
	end

	describe "#exit" do
		it "prints 'exit' when receiving 'exit' as user input" do
			expect(@terminal).to receive(:read).and_return("exit")
			expect(@terminal).to receive(:write).with("exit")
			@textui.exit_game
		end
	end

	describe "#beg_coordinates" do
		it "prints first coordinates when received" do 
			expect(@terminal).to receive(:read).and_return("D3 2 D4")
			expect(@terminal).to receive(:write).with("D3 2 D4")
			@textui.beg_coordinates
		end
	end


end