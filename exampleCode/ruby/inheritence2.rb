class Animal
  attr_accessor :fur
  def bite
    puts "bites"
  end
end

class Cat < Animal
  def meow
    puts "meow"
  end
end

class Person < Animal
  def speak(word)
    puts word
  end
end

class Vehicle
  attr_accessor :engine_type, :year, :color
end

class Watercraft
  attr_accessor :year
end

class Boat < Watercraft
  attr_accessor :propeller_type
end

class Car < Vehicle
    attr_accessor :number_of_doors
end

class Motorcycle < Vehicle
end


my_motorcycle = Motorcycle.new
my_car = Car.new
my_boat = Boat.new

puts my_motorcycle.year = 1980
puts my_car.year = 2000
puts my_boat.year = 2010