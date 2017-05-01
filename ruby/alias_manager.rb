# Release 0
=begin
The goal is to take a spy's name and create a fake name by:
Switching the first and last name, probably by using split(" ")
Then change all the vowels in the name to the next vowel.
1. Get full name by asking user for their first and last name.
2. Create method that will first swap the first and last name, and then sequence each vowel to the next vowel in the order of 'AEIOU'
3. Puts the new alias
=end

full_name = "Joshua Rudio"
vowels = ["a", "e", "i", "o", "u"]

def name_splitter(full_name)
	names = full_name.split(" ")
	names = names[1] + " " + names[0]
end


def vowel_changer(full_name)

upper_vowels = ['A', 'E', 'I', 'O', 'U', 'A']
lower_vowels = ['a', 'e', 'i', 'o', 'u', 'a']

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

p name_splitter(full_name)
p vowel_changer(full_name)