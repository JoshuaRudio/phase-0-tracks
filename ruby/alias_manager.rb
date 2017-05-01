
# Release 0

=begin
The goal is to take a spy's name and create a fake name by:
Switching the first and last name, probably by using split(" ")
Then change all the vowels in the name to the next vowel.
1. Get full name by asking user for their first and last name.
2. Create method that will first swap the first and last name, and then sequence each vowel to the next vowel in the order of 'AEIOU'
3. Puts the new alias
=end

def alias_maker(full_name)
=begin
names = full_name.split(" ")
swapped = names[1] + names[0]
=end
if full_name.split(" ").length > 1
	names = full_name.split(" ")
else
	full_name
end
	
upper_vowels = ['A', 'E', 'I', 'O', 'U', 'A']
lower_vowels = ['a', 'e', 'i', 'o', 'u', 'a']
upper_cons = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z', 'B']
lower_cons = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'b']

swapped = full_name.split('')

swapped.map! do |char, index|
	if lower_vowels.include? char
		char = lower_vowels[lower_vowels.index(char) + 1 ]
	elsif upper_vowels.include? char
		char = upper_vowels[upper_vowels.index(char) + 1 ]
	else
		char
	end
end

vowels = swapped.join('')

consonants = vowels.split('')

consonants.map! do |char, index|
	if lower_cons.include? char
		char = lower_cons[lower_cons.index(char) + 1 ]
	elsif upper_cons.include? char
		char = upper_cons[upper_cons.index(char) + 1 ]
	else
		char
	end
end

the_alias = consonants.join('')
puts the_alias

end
  
# Release 1

aliases = {}
input = ""
fake_name = ""

puts "Welcome to my alias maker. Continually enter the name(s) you would like to incognitize. When finished, type 'quit.'"

while input = gets.chomp
	if input.split(" ").length > 1
		fake_name = alias_maker(input) unless input == "quit" || input == "Quit"
		aliases[input.to_sym] = fake_name
	else
		puts "This alias maker requires at least a first and last name." unless input == "quit" || input == "Quit"
	end
	puts "Enter name:" unless input == "quit" || input == "Quit"
	break if input == "quit" || input == "Quit"
end
puts "Thank you for using my alias maker"

p aliases

aliases.each do |real, fake|
	puts "#{real} is also known as #{fake}."
end

