require "pry"

module Navigate
  def go_north
  end
  def go_south
  end
end

module Signal
  def left_blinker
  end
  def right_blinker
  end
  def emergency_lights
    puts "blink"
  end
end

class Vehicle
  include Navigate
  include Signal
end

class Car < Vehicle
end

my_car = Car.new
puts my_car.emergency_lights
puts my_car.private_methods