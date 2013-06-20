class Car
  attr_accessor :color, :year, :make, :model

  def initialize(color, year, make, model)
    @color = color
    @year = year
    @make = make
    @model = model
  end
  def honk
    puts "honk"
  end
end

car_1 = Car.new('black', 1986, 'gmc', 'jimmy')
puts car_1.inspect

car_2 = Car.new('red', 2004, 'kia', 'soul')
car_2.color = ('blue')
puts car_2.inspect

car_2.honk

# extend classes with custom methods
class String
  def mess_up
    self.reverse.downcase
  end
end

puts "foo bar".mess_up