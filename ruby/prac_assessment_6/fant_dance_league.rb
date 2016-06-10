class Dancer
attr_reader :name
attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
    @card = Array.new
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  def queue_dance_with(partner)
    @card << partner
  end

  def card
    @card
  end

  def begin_next_dance
    "Now dancing with #{@card.delete_at(0)}."
  end

  def stretch
    "*stretch*"
  end
end