class BikeRide
  attr_accessor :number_of_riders, :color_seen, :thing_seen, :start, :stop

  def initialize(color_seen, thing_seen)
    @color_seen = color_seen
    @thing_seen = thing_seen
    @start = start
    @stop = stop

  def loc1(start)
    puts "Started at: #{start}"
  end

  def seen
    puts "Saw a #{color_seen} #{thing_seen} along the way~~"
  end

  def ate(food)
    puts "Ate #{food}!"
  end

  def over_heard(thought)
    puts "Thought: #{thought}."
  end

  def loc2(stop)
    puts "Stopped at: #{stop}"
  end
end

bike_ride = BikeRide.new("blue", "sky")
bike_ride.loc1("Chicago")
bike_ride.seen
bike_ride.ate("chicken and waffles")
bike_ride.over_heard("The hills are what makes me stronger")
bike_ride.loc2("Florida")
puts ("--").to_s

bike_ride = BikeRide.new("green", "mountain")
bike_ride.loc1("San Francisco")
bike_ride.seen
bike_ride.ate("cherries")
bike_ride.over_heard("One who lives life fully is prepared to die at any time")
bike_ride.loc2("Seattle")
puts ("--").to_s

bike_ride = BikeRide.new("yellow", "lamb")
bike_ride.loc1("D.C.")
bike_ride.seen
bike_ride.ate("Jambalaya")
bike_ride.over_heard("It always seems impossible until its done")
bike_ride.loc2("New Orleans")
puts ("--").to_s


p bike_ride.number_of_riders = 3293
end