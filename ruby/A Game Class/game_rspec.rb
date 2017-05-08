require_relative 'game'

describe GuessingGame do
	let(:game) { GuessingGame.new("joshua") }

	it "checks to see if the guessed letter is in the answer" do
		expect(game.guess("j")).to eq "j_____"
	end
end