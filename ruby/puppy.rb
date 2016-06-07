SPECIFIES --------------------
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

