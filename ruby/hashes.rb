=begin
Welcome client and begin questionnaire
Ask for client's name
	name: "client's name
Ask client's age
	age: "client's age"
Ask what kind of home do they live in
	home: "client's home"
Ask client how many children they have
	children: #
Ask client's favorite color
	favorite_color: "client's color"
Ask client what theme they are looking for
	theme: "client's theme"
Ask if client is scared of spiders
	spiders: true/false
Ask client how many years they plan on living there
	occupancy_length: #
Print hash
	p hash
Ask client if they are sure about their theme
	theme: "client's theme"
Thank client for their time
=end

client_data = {
	name: nil,
	age: nil,
	children: nil,
	favorite_color: nil,
	theme: nil,
	spiders: nil,
	occupancy_length: nil
}

puts "Hey! Thanks for choosing me as your interior designer, let's decorate your house!"
puts "What is your name?"
client_data[:name] = gets.chomp

puts "How old are you?"
client_data[:age] = gets.chomp.to_i

puts "What kind of building is your home? (House, condo, apartment, trailer, etc)"
client_data[:home] = gets.chomp

puts "How many children do you have?"
client_data[:children] = gets.chomp.to_i

puts "What kind of theme would you like for your home?"
client_data[:theme] = gets.chomp

puts "Are you scared of spiders? (Yes/No)"
input = gets.chomp
if input == "Yes" || input == "yes"
	client_data[:spiders] = true
elsif input == "No" || input == "no"
	client_data[:spiders] = false
else
	puts "I'm sorry, that is an invalid answer. I will assume you are afraid of spiders."
	client_data[:spiders] = true
end

puts "How many years do you plan on living there?"
client_data[:occupancy_length] = gets.chomp.to_f

puts "#{client_data[:theme]} is a cool theme, please reenter #{client_data[:theme]} if still want that theme or enter a different theme that you may enjoy."
client_data[:theme] = gets.chomp
		
p client_data