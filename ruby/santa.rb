class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		cooke.downcase
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		@age += 1
		puts "Happy birthday Santa! You're #{@age} now!"
	end

	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
	
	def ethnicity
		@ethnicity
	end

	def gender=(new_gender)
		@gender = new_gender
  end
end

#puts Santa.private_methods.sort

#santa = Santa.new("Male", "White")
#santa.speak
#santa.eat_milk_and_cookies("chocolate chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts "------------------------------"
  puts "Initializing Santa instance..."
  puts "This Santa is #{example_genders[i]} and #{example_ethnicities[i]}"
end