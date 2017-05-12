# Virus Predictor

# I worked on this challenge [by myself, with: Chris McMenomy].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is linking state_data.rb to my_solution.rb so that the data is available to read 
# my_solution.rb. 
# when using require, you can load other libraries but need to write the path to the file, with require_relative,
# it is much simpler to load data by using the file name for the parameter.

require_relative 'state_data'

class VirusPredictor
  # takes 3 arguments to declare attributes
  # will run anytime a new instance is made
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[state_of_origin][:population]
    @population_density = STATE_DATA[state_of_origin][:population_density]
  end

  # calls the other two methods in class in order to print out the results of the methods on each instance
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

    # calculates the number of deaths based on state population and population density 
    # and will print them to console
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    (@population * multiplier).floor
  end

  # calculates the speed of spread of the virus based on the state's population density
  # the higher the density, the faster it travels, and prints the speed of spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each_key { |state| VirusPredictor.new(state).virus_effects }

#=======================================================================
# Reflection Section
#
# The difference between the two different hash syntaxes is that a hash stored with a string will have a 
# instance value each and every time it runs but a hash stored with a symbol will have the same value for
# each and every instance.
#
# require_relative can be loaded by simply calling the name of the file in the same working directory where as
# with require, you may load different libraries and gems but the path of the file needs to be written out as
# the parameter
#
# In this challenge, we intially used .each to iterate thru the STATE_DATA hash but after refactoring, we 
# iterated using .each_key, resulting in more readable code. 
#
# During the refactoring, I was amazed to find that the parameters were not even need when defining the methods.
# I learned that one may spend many hours refactoring their code to make it as, DRY, readable, and/or efficient 
# as possible. Also, eliminating variables like number_of_deaths and speed helped me to understand how refactoring
# can make a big difference in how readable a program is.
#
# Refactoring was a concept that was solidified for me. I now better understand how to make my code more DRY.