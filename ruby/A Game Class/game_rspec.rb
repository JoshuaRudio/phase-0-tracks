# Pseudocode

# Method: on initialization, sets the rules for the game
# input: a word to be guessed entered by player 1
# steps:
  # sets guesses to 0
  # sets max guesses to the length of the word entered
  # opens an empty structure that will store the values guessed by player 2
  # replaces all letters with "_'"
# output: N/A

# Method: checks to see if a letter entered by player 2 is inside the word player 1 entered
# input: a letter
# steps:
	# check if the letter entered by p2 is anywhere in the word entered by p1
	# IF the word contains the letter, replace the "_" with that letter
	# guesses is incremented with each guess UNLESS letter was previously guessed
	# stores all guesses into a data structure
# output: displays the progress of the word being guessed

equire_relative 'game'

describe GuessingGame do
	let(:game) { GuessingGame.new("joshua") }

	it "checks to see if the guessed letter is in the answer" do
		expect(game.guess("j")).to eq "j_____"
	end
end