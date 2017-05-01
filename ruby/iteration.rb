#Pair between Josh Harvey & Joshua Rudio

# Release 1
crayon_colors = ["Red", "Blue", "Green", "Yellow", "Orange", "Purple"]

dinosaur_colors = {
	trex: "Green",
	longneck: "Gray",
	threehorn: "Orange",
	ducky: "Yellow",
	pteradactyl: "Blue",
	barney: "Purple"
}

crayon_colors.map! do |color|
	puts color.upcase + " is my favorite crayon color!"
	color.chop
end

p crayon_colors.each { |color| color.downcase }

p crayon_colors

dinosaur_colors.map do |dino|
	puts "#{dino}".upcase
end

p dinosaur_colors


# Release 2: Use the Documentation

array0 = [1, 3, 8, 4, 7, 10, 8, 5]
array1 = [1, 3, 8, 4, 7, 10, 8, 5]
array2 = [1, 3, 8, 4, 7, 10, 8, 5]
array3 = [5, 5, 5, 2323, 45667, 655, 5, 729, 18, 78, 35, 5]

# 1.
array0.delete_if { |x| x < 5}
p array0

# 2.
array1.keep_if { |x| x < 5}
p array1

# 3.

array2.select! { |x| x == 5}
p array2

# 4.

array3.each do |x|
	while array3.length > 6
		array3.pop
	end
end

p array3