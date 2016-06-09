module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    puts "#{words}" + "!!!" + " :("
  end

  def self.yelling_happily(joy_yells)
    puts "Yells of joy like #{joy_yells}"
  end
end

Shout.yell_angrily("Arrrrggghhhh")
Shout.yelling_happily("Wooohooo!")