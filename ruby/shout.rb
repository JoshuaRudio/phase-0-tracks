=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "!!!" + " :)"
	end
end

puts Shout.yell_happily("I'm mad")
puts Shout.yell_happily("I'm happy")f
=end

module Shout
	def happy_shout(words)
		words + "!!!" + " :)"
	end

	def mad_shout(words)
		words.upcase! + "!!!" + " XD"
	end
end

class Preachers
	include Shout
end

class Ogres
	include Shout
end

pastor = Preachers.new
puts pastor.happy_shout("Praise the Lord")
shrek = Ogres.new
puts shrek.mad_shout("Get out of my swamp")