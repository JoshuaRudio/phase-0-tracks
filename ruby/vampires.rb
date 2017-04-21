employees = " "
line = " "

puts "Hello, welcome to Werewolf Inc. Where you'll be howling at the moon with so much fun you'll be having."
puts "How many employees are to be processed?"
employees = gets.chomp.to_i

while employees > 0

puts "What is your name?"
name = gets.chomp
puts "Alright #{name}, how old will you be at the end of this year?"
age = gets.chomp.to_i
puts "I remember when I was #{age}... What year were you born?"
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? ( Yes / No )"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance? ( Yes / No )"
insurance = gets.chomp

while line != "Done"
	line = " "
	puts "Please list your allergies down one at a time. When you are finished, type in 'Done'."
	line = gets.chomp
	if line == "Sunshine"
		dislikes_sun = true
		break
	end
end

employees -= 1

if garlic_bread == "Yes"
	likes_garlic_bread = true
end

if insurance == "Yes"
	wants_insurace = true
end

current_year = 2017
age_test = current_year - birth_year

if age_test == age
	real_age = true
end

if name == "Drake Cula" || name == "Tu Fang"
	vampire_name = true
end


if dislikes_sun
	puts "#{name} is PROBABLY a vampire..."		
elsif vampire_name
	puts "#{name} IS DEFINITELY A VAMPIRE!"
elsif !real_age && !likes_garlic_bread && !wants_insurace 
	puts "#{name} is almost certainly a vampire!"
elsif !real_age && !( likes_garlic_bread || wants_insurace )
	puts "#{name} is PROBABLY a vampire..."		
elsif real_age && likes_garlic_bread && wants_insurace
	puts "#{name} is probably NOT a vampire!"
else
	puts "Results inconclusive..."
end

line = " "
dislikes_sun = false

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."