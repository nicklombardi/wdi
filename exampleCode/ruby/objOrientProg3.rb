# these do the same thing
class Pet
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def backwards_code_name
    @name.reverse
  end

end

def Pet.speak
  puts "woof"
end

Pet.speak

p = Pet.new("bennet", 2)
puts p.inspect
puts p.backwards_code_name

