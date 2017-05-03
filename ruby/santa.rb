class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		cookie.downcase
		puts "That was a good #{cookie} cookie!"
	end

	# A method that ages Santa by one
	def celebrate_birthday
		@age += 1
		puts "Happy birthday Santa! You're #{@age} now!"
		@age
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

santas = []

genders = ["male", "female", "male", "female", "transgender", "gender fluid", "N/A", "bigender"]
ethnicity = ["black", "asian", "white", "latino", "black", "asian", "white", "latino"]

genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicity[i])
end

santas.each do
	santas.speak
end