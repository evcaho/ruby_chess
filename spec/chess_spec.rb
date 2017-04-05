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
		it "prints beginning coordinates" do
			expect(@terminal).to receive(:read).and_return("D4 to infinity")
			expect(@terminal).to receive(:write).with("D4")
			@textui.exit_game
		end
	end

	describe "#beg_coordinates" do
		it 'should print out first coordinate' do
      		expect(@textui.beg_coordinates("D4 to infinity")).to eq("D4")
    	end
	end


end