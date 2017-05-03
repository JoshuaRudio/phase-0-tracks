=begin
SPECIES ------------
Red-Cliff Gigantus

CHARACTERISTICS ----
Fur color: red
Size: xxxl
Weight: varies
Friendly: yes
Indoor dog: no

BEHAVIOR -----------
Lick
Bark
Dig
Growl
Fetch
=end

class Puppy
	end

#p Puppy.methods

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new
clifford = Puppy.new

#p spot.class
#p duchess == fido
#p fido.instance_of?(Array)
#p fido.instance_of?(Puppy)
#p spot.play_dead