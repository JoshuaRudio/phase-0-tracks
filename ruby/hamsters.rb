puts "What is the hamster's name?"
hamsters_name = gets.chomp

puts "What is the volume of the hamster?"
hamsters_volume = gets.chomp.to_i

puts "What is its fur color?"
hamsters_fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption?"
adoptionness = gets.chomp

puts "What is the hamster's age?"
hamsters_age = nil
hamsters_age = gets.chomp.to_i

puts "Hamsters Name: #{hamsters_name}"
puts "Hamsters Volume: #{hamsters_volume}"
puts "Hamsters Fur Color: #{hamsters_fur_color}"
puts "Should you adopt?: #{adoptionness}"
puts "Hamsters Age: #{hamsters_age}" 

# Paired between Joshua Rudio and Paul Hammerschmidt