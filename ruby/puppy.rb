SPECIES --------------------
Puppy
CHARACTERISTICS --------------
Color : Light brown
Fur length : 1 inch
Sheds : no
Tail length : 2 inch
Personality : lively
BEHAVIOR ---------------------
Cuddle
Bark
Whine
Singz

# run this
class Puppy
  def initialize(name)
    @name = name
  end

  def bark
    puts "#{@name} says: Woof!"
  end
end

# we make an array of names to build puppies with
names = ["Fido", "Spot", "Duchess", "Ginger"]

# we make an empty container for our puppy collection
puppies = []

puts "Iterating through names list to create puppies ..."
names.each do |name|
  puts "Creating a puppy named #{name} ..."
  puppies << Puppy.new(name)
  puts "There are now #{puppies.length} Puppy instances in the array"
  puts "----"
end

puts "Testing each Puppy instance in the array to make sure it can bark ..."
puppies.each do |puppy|
  puppy.bark
end
#

=begin
# create new instance of puppy class. Instances:Class :: Members:Species
class Puppy
end
#  p spot.class # Puppy
#  p duchess == fido #false
#  p fido.instance_of?(Array) #false
#  p fido.instance_of?(Puppy) #true
# p spot.play_dead #undefined
duchess = Puppy.new # creating new instance
fido = Puppy.new
spot = Puppy.new
p str = String.new # ""
p str.length # 0
p str.empty? # true
p str += "huh." #"huh."
p str = "some string" # "some string"
p greeting = String.new("hello") #{}"hello"
p greeting.length # 5
p greeting.upcase #"HELLO"
=end