require 'pry'
require 'yahoo_weatherman' #https://github.com/dlt/yahoo_weatherman
require 'rainbow' #https://github.com/sickill/rainbow


class Person
  attr_accessor :name, :strength, :zip

  def initialize(name, zip)
    @name = name
    @strength = 100
    @zip = zip.to_s
  end

  def feel
    client = Weatherman::Client.new
    temp = client.lookup_by_location(@zip).condition['temp'].to_i
    if temp < 32
      puts "brrr".color(:blue)
    else
      puts "i'm burning up!".color(:red).blink
    end
  end
end
  def work
    puts "i have to work"
    @strenth = @strength - 1
  end

  def sleep
    puts "sleep! HEAL ME!"
    @strength = @strength + 1
  end

end

class Sun
  def initialize
    @status = true
  end

  def day
    @status = true
  end

  def night
    @status = false
  end

  def shining?
    @status
  end
end

sun = Sun.new
phil = Person.new('Phil')

WORK = {}

while sun.shining?
  WORK[:hell] = phil
  binding.pry
end

class Weather
  def Weather.get(zip)
    zip = zip.to_s
    client = Weatherman::Client.new
    temp = client.lookup_by_location(zip).condition['temp'].to_i
  end
end