#######################################
# Release 3: Convert a Standalone Module to a Mixin

module Shout
  def yell(words)
    puts "yelled, #{words}!!!!!"
  end
end

class Happy
  include Shout
end

class Angry
  include Shout
end

class Dog
  include Shout
end

class Cat
  include Shout
end

shouts = Happy.new
shouts.yell("Wooohooo")

shouts = Angry.new
shouts.yell("Arrrrggghhhh")

shouts = Dog.new
shouts.yell("AWoooooooooooo")

shouts = Cat.new
shouts.yell("RRRRRRRRRaaaaaaarrrrrr")

=begin

#######################################
Release 1: Write a Simple Module

module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    puts "#{words}" + "!!!" + " :("
  end

  def self.yell_happily(joy_yells)
    puts "Yells of joy like #{joy_yells}"
  end
end

Shout.yell_angrily("Arrrrggghhhh")
Shout.yell_happily("Wooohooo!")
=end



