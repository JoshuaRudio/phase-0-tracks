
# Release 0
=begin
The goal is to take a spy's name and create a fake name by:
Switching the first and last name, probably by using split(" ")
Then change all the vowels in the name to the next vowel.
1. Get full name by asking user for their first and last name.
2. Create method that will first swap the first and last name, and then sequence each vowel to the next vowel in the order of 'AEIOU'
3. Puts the new alias
=end
=begin
full_name = "Joshua Rudio"
vowels = ["a", "e", "i", "o", "u"]

def 	name_splitter(full_name)
	names = full_name.split(" ")
	names = names[1] + " " + names[0]
end


def vowel_changer(full_name)

upper_vowels = ['A', 'E', 'I', 'O', 'U', 'A', '-', '-']
lower_vowels = ['a', 'e', 'i', 'o', 'u', 'a', '-', '-']

name = full_name.split('')

name.map! do |char, index|
	if lower_vowels.include? char
		char = lower_vowels[lower_vowels.index(char) + 1 ]
	elsif upper_vowels.include? char
		char = upper_vowels[upper_vowels.index(char) + 1 ]
	else
		char
	end
end
altered_name = name.join('')
end

#p name_splitter(full_name)
#p vowel_changer(full_name)

def consonant_changer(full_name)

upper_cons = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z', 'B', '-', '-']
lower_cons = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z', 'b']

name = full_name.split('')

name.map! do |char, index|
	if lower_cons.include? char
		char = lower_cons[lower_cons.index(char) + 1 ]
	elsif upper_cons.include? char
		char = upper_cons[upper_cons.index(char) + 1 ]
	else
		char
	end
end
altered_name = name.join('')
end

#p consonant_changer(full_name)

def alias_manager(full_name)
	step_0 = full_name.name_splitter
	step_1 = swapped.vowel_changer
	step_2 = devoweled.consonant_changer
	p step_2
end

alias_manager(full_name)
=end

full_name = "Joshua Rudio"

def alias_maker(full_name)
  
names = full_name.split(" ")
swapped = names[1] + " " + names[0]
	
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
  
alias_maker(full_name)
alias_maker("Felicia Torres")