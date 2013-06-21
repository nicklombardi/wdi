class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
  def to_s
    "#{name} is a #{age} year old #{gender}"
  end
end

f = File.new("data.txt", 'r')
house = []

f.each do |line|
  person_array = line.chomp.split(',')
  house << Person.new(person_array[0], person_array[1], person_array[2])
end

puts house

f.close