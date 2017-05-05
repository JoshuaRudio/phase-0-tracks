class Santa
	def initialize(gender, ethnicity)
		@age = rand(0..140)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		cookie.downcase
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end
# A method that takes a reindeer name as an argument and puts it in the last array slot.
	def get_mad_at(reindeer)
		@reindeer_ranking.each do |name, index|
			if name == reindeer
				name.last
			end
		end
	end

	# Getter methods
	def ethnicity
		@ethnicity
	end

	def age
  	@age
  end
end

santas = []
genders = ["male", "female", "male", "female", "transgender", "gender fluid", "N/A", "bigender"]
ethnicity = ["black", "asian", "white", "latino", "black", "asian", "white", "latino"]

genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicity[i])
end

p santas[1].get_mad_at("Vixen")
p santas[2].get_mad_at("Fake")