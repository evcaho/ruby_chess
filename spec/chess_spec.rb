require "chess"
require "board"

describe TextUI do
	before do 
		@terminal = Terminal.new()
		@board = Board.new()
		@textui = TextUI.new(@terminal, @board)
	end



	describe "#main" do
		it "exits" do
			expect(@terminal).to receive(:write).with("white input move")
			expect(@terminal).to receive(:read).and_return("exit")
			expect(@terminal).to receive(:write).with("exit")
			@textui.main
		end
	end


	describe "#turn" do
		it "saves" do
			expect(@terminal).to receive(:write).with("white input move")
			expect(@terminal).to receive(:read).and_return("save")
			expect(@terminal).to receive(:write).with("Saved")
			@textui.turn("white")
		end

		it "prints move" do 
			expect(@terminal).to receive(:write).with("black input move")
			expect(@terminal).to receive(:read).and_return("D3")
			expect(@terminal).to receive(:write).with("black moves D3.")
			@textui.turn("black")
		end

	end

end


