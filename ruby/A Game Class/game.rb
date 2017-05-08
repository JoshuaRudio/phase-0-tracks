class GuessingGame
	attr_accessor :guesses
	attr_reader :current_word, :word, :max_guesses

	def initialize(word)
		@word = word
		@guesses = 0
		@max_guesses = word.length
		@guesses_remaining = word.length
		@current_word = "_" * (word.size)
		@inquiries = []
	end

	def guess(guess)
#		@inquiries << guess.downcase
		@word.downcase.split("").each_with_index do |letter, i|
			if letter == guess.downcase
				@current_word[i] = guess.downcase
			end
		end
		@guesses += 1 unless @inquiries.include? guess
		@inquiries << guess.downcase
		p @current_word
	end
end

puts "Player 1, please input a word"
word = gets.chomp
game = GuessingGame.new(word)
puts "Player 1, please give control to Player 2. Player 2 will have #{game.max_guesses} chances."
=begin
while game.guesses < game.max_guesses
	puts "Player 2, please enter a letter:"
	guess = gets.chomp
	game.guess(guess)
	if game.current_word.downcase == game.word.downcase
		puts "Congrats! You win!"
	elsif game.guesses == game.max_guesses && game.word != game.current_word
	  puts "Boo! You suck!"
	end
end
=end