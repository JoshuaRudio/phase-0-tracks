def vampires
	puts "What is your name?"
	name = gets.chomp
		if name == "Drake Cula" || name == "Tu Fang"
			vamp_name = true
		end
	puts "How old are you?"
	age = gets.to_i
	puts "What year were you born?"
	birth_year = gets.to_i
	puts "Our company cafeteria serves garlic bread. Should we order you some? Please answer 'Yes' or 'No.'"
	garlic_bread = gets.chomp
		if garlic_bread == "Yes"
			likes_garlic_bread = true
		elsif garlic_bread == "No"
			likes_garlic_bread = false
		end
	puts "Would you like to enroll in the company's health insurance?"
	insurance = gets.chomp
		if insurance == "Yes"
			wants_insurance = true
		elsif insurance == "No"
			wants_insurance = false
		end	
	current_age = 2017 - birth_year
		if vamp_name
			puts "Definitely a vampire!"
		elsif age == current_age && likes_garlic_bread && wants_insurance
			puts "Probably not a vampire"
		elsif age != current_age && !(likes_garlic_bread || wants_insurance)
			puts "Probably a vampire."
		elsif age != current_age && !likes_garlic_bread && !wants_insurance
			puts "Almost certainly a vampire"
		else
			puts "Results inconclusive"
	end
end

vampires