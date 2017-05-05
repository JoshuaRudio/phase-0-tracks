class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@age = rand(0..140)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing a(n) #{@ethnicity} #{gender} Santa ..."
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
		puts "Happy Birthday Santa, you're #{@age} now!"
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.each do |name|
			if name == reindeer
				@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
			else
				@reindeer_ranking
			end
		end
		p "Back of the line, #{reindeer}!"
		p @reindeer_ranking
	end
end

santas = []
santa = Santa.new("male", "white")

genders = ["Male", "Female", "Male", "Female", "Transgender", "Gender Fluid", "N/A", "Bigender"]
ethnicity = ["Black", "Asian", "White", "Latino", "Black", "Asian", "White", "Latino", "Russian", "Filipino", "Chinese", "Korean", "Polish", "Kenyan", "Puerto Rican", "Jamaican", "Armenian", "Japanese", "Nicaraguan", "Nigerian"]

puts "How many santas would you like to created?"
num_of_santas = gets.chomp.to_i

num_of_santas.times do |i|
	santas << Santa.new(genders.sample, ethnicity.sample)
	puts "Age: #{santas[i].age}"
	puts "Ethnicity: #{santas[i].ethnicity}"
	puts "Gender: #{santas[i].gender}"
	santas[i].speak
end