class BikeRide
  attr_accessor :number_of_riders, :color_seen, :thing_seen, :start, :stop

  def ate(food)
    puts "We stopped and ate #{food}!"
  end

  def over_heard(thought)
    puts "Something we over head was #{thought}."
  end

  def initialize(color_seen, thing_seen)
    @color_seen = colors_seen
    @thing_seen = [""]

  def about
    puts "Started at: #{@start}"
    puts "Stopped at: #{@stop}"

end

bike_ride = BikeRide.new("blue", "sky")
bike_ride.number_of_riders = 293
puts bike_ride.color_seen = "pink"
puts bike_ride.thing_seen = "sunset"

