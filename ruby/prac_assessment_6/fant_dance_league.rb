class Dancer
attr_reader :name, :card
attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
  end

  def pirouette
    "*twirls*" # implicit return. if use keyword return it's explicit
  end

  def bow
    "*bows*"
  end

  def queue_dance_with(partner)
    @card << partner
    p @card
#   @card.push(partner_name)
  end

  def begin_next_dance
     "Now dancing with #{@card.shift}." #shift deletes at 0 index
#    "Now dancing with #{@card.delete_at(0)}."
  end

  def stretch
    "*stretch*"
  end
end