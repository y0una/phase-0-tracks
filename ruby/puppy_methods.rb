# paired with Emilia Friedberg
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    puts "Woof!" * x
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    p human_years * 7
  end

  def run_in_circles
    puts "*chases tail*"
  end

  def initialize # runs it first
    puts "Initializing new puppy instance ..."
  end

end

# driver code

lola = Puppy.new # new instance
p lola.class
lola.fetch("ball")

# running speak on class instance
lola.speak(3)

# running roll_over on class instance
lola.roll_over

lola.dog_years(2)

lola.run_in_circles

lola = Puppy.new # when new instance is created initialized method is called without explicit call

# Use a loop to make 50 instances of your class.


class Human

  def initialize
    puts "initializing..."
  end

  def drink_coffee
    puts "*drinking_coffee*"
  end

  def greeting
    puts "What a good morning!"
  end

end

human_count = 0
list_array = []

until human_count == 50
   p Human.new
   human_count += 1
   list_array << Human.new
end

p list_array

list_array.each do |alex|
  alex.drink_coffee
  alex.greeting
end