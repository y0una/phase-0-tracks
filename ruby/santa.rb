class Santa
  attr_accessor :age, :gender, :ethnicity #setter

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance ..."
    puts "Gender: #{gender} // Ethnicity: #{ethnicity}"
  end
=begin
  def set_gender(gender) #setter method allows @gender to be reassigned from outside the class definition
    @gender = gender
  end

  def get_age(age) #getter method return @age
    @age = age
  end

  def get_ethnicity(ethnicity) #getter method return @ethnicity
    @ethnicity = ethnicity
  end

  def celebrate_birthday #age Santa by one year
    @age = @age + 1
  end
=end
  def get_mad_at(in_trouble) #take a reindeer's name as arg, move that reindeer in last place in reindeer rankings
    @reindeer_ranking.delete(in_trouble)
    @reindeer_ranking
    @reindeer_ranking << in_trouble
  end
end

santa = Santa.new("gender", "ethnicity") # define and initialize santa variable
puts santa.get_mad_at("Dancer")
santa.age=[0..140]
#puts santa.celebrate_birthday
puts santa.ethnicity = "Korean"
puts santa.gender = "female"

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#Create Santas with a randomly selected gender & randomly selected ethnicity, 100 times
#Set your new Santa's age to a random number between 0 and 140
p 100.times.map { [example_genders.sample, example_ethnicities.sample, (1..140).to_a.sample(1)] }

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end