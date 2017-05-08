# Paired between Ariane and Joshua

def encrypt (str)
	index = 0
	while index < str.length
  		str[index] = str[index].next
  		index += 1
	end
	p str
end

def decrypt (str)
	index = 0
	while index < str.length
		str[index] = (str[index].chr.ord - 1).chr
		index += 1
	end
	p str
end

puts "Welcome secret agent! Would you like to 'Decrypt' or 'Encrypt' a password?"
while preference = gets.chomp
	if preference == "Decrypt" || preference == "decrypt"
		decrypt_pw = true
		break
	elsif preference == "Encrypt" || preference == "encrypt"
		encrypt_pw = true
		break
	else
		puts "I'm sorry that is an invalid response, please try again."
	end
end

puts "Please enter your password:"
password = gets.chomp
if decrypt_pw
	decrypt (password)
else encrypt_pw
	encrypt (password)
end
puts "Thank you for using Password Pro 3000. Have a great day."		