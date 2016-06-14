# Virus Predictor
# I worked on this challenge with Millie Chan
# We spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# require: require depends on dir in when run file. may not find if it separate folder
# require_relative always runs from inside file
require_relative 'state_data'

class VirusPredictor
# Setting up state of each instance object. Creates instance variables to be used by the follwoing methods
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_deaths = 0
    @speed = 0
  end


# run these methods. First predicted_deaths first then speed_of_spread
# public method virus_effects generates report
  def virus_effects
    predicted_deaths
    speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths.floor} people in this outbreak and will spread across the state in #{@time_to_spread} months.\n\n"
  end

# To prevent the programmer from writing public methods that scroll forever in the vertical direction, private methods break your public method implementations into readable/maintainable/cohesive/reusable(DRY) chunks - each chunk ideally being a private method with an intention revealing name.
  private

# calculate number of deaths depending on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1)
    else
      @number_of_deaths = (@population * 0.05)
    end
  end

# calculate speed takes in population density according to different threadholds and generates hardcoded speed. Takes in state to look for right information in driver code
  def speed_of_spread  #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @time_to_spread = 0.0

    if @population_density >= 200
      @time_to_spread += 0.5
    elsif @population_density >= 150
      @time_to_spread += 1
    elsif @population_density >= 100
      @time_to_spread += 1.5
    elsif @population_density >= 50
      @time_to_spread += 2
    else
      @time_to_spread += 2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, pop_data|
  new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_state.virus_effects
  end
#=======================================================================
=begin
# Reflection Section

1. What are the differences between the two different hash syntaxes shown in the state_data file?
- In a  Key => Value pair, Key is the label that applied to Value. For example in
  "Alabama" => {population_density: 94.65, population: 4822023},
Alabama is the label that applies to the population density and population data
- Symbols work very well in hashes. In “population_density: 94.65” the “:” makes it a fixed value and unchangeable.

2. What does require_relative do? How is it different from require?
- require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.

For example, if you have unit test classes in the "test" directory, and data for them under the test "test/data" directory, then you might use a line like this in a test case: require_relative "data/customer_data_1"

Since neither "test" nor "test/data" are likely to be in Ruby’s library path (and for good reason), a normal require won’t find them. require_relative is a good solution for this particular problem.

- require depends on the directory that it’s in when file is run. It may not find if it’s in a separate folder.

3. What are some ways to iterate through a hash?
- hash.each do | key, value |
   # what you want to do to the hash
  end
- .map! will permanently change the item to whatever the last line in block evaluates to

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
- We didn’t need to take in the @population_density, @population, @state parameters because we aren’t specifying arguments in the virus_effects method

5. What concept did you most solidify in this challenge?
- Best solidified is the .each and .map! iterating through an array / hash

=end