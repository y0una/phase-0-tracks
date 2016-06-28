# Design and implementing a BikeRide class
# First ask how many times user would like to go through this class
# Ask about what they see along the bike ride and put data into an array
# Generate array of data and mad lib at the end from the data

puts "How many times do you want to go through this BikeRide mad lib?"
$instance = gets.chomp.to_i

class BikeRide
  i=0
  loop do
    attr_accessor :color_seen, :thing_seen, :start, :stop, :number_of_riders

    def initialize(color_seen, thing_seen)
      @color_seen = color_seen
      @thing_seen = thing_seen
      @start = start
      @stop = stop
      @data_array = []
    end

    def loc1(start)
      puts "Which city did you start?"
      @start = gets.chomp
      @data_array << @start
    end

    def seen
      puts "What's a color you see?"
      @color_seen = gets.chomp
      @data_array << @color_seen

      puts "What's a thing you see?"
      @thing_seen = gets.chomp
      @data_array << @thing_seen
    end

    def ate(food)
      puts "What did you stop to eat?"
      @food = gets.chomp
      @data_array << @food
    end

    def over_heard(thought)
      puts "What's something you thought?"
      @thought = gets.chomp
      @data_array << @thought
    end

    def loc2(stop)
      puts "Where did you stop?"
      @stop = gets.chomp
      @data_array << @stop
      p @data_array
    end

    def print_all
      puts "Started at: #{start}"
      puts "Saw a #{color_seen} #{thing_seen} along the way~~"
      puts "Ate #{@food}!"
      puts "Thought: #{@thought}"
      puts "Stopped at: #{stop}"
    end

    bike_ride = BikeRide.new("blue", "sky")
    bike_ride.loc1("Chicago")
    bike_ride.seen
    bike_ride.ate("chicken and waffles")
    bike_ride.over_heard("The hills are what makes me stronger")
    bike_ride.loc2("Florida")
    bike_ride.print_all
    bike_ride.number_of_riders = 3293
    puts ("--").to_s

    i+=1
    break if i == $instance
  end
end



=begin
From Release 0:
######################################################
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


end
=end