class Human
  attr_accessor :strength, :intelligence, :stealth, :health

  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)

    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end

  end

end

@human1 = Human.new
@human2 = Human.new

# Shows the class name of the
# instantiated object
puts @human1.class

# Shows the class hierarchy that an
# object of a class has (or would have)
# of its inheritance
puts @human1.class.ancestors