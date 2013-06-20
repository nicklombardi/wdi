class Person
  # setter
  def name=(name)
    @name = name
  end

  # getter
  def name
    @name
  end

  # setter
  def age=(age)
    @age = age
  end

  # getter
  def age
    @age
  end

  def hello
    puts "hello"
  end

  def speak(words)
    puts words
  end
end

person_1 = Person.new
person_2 = Person.new

person_1.name=("robert paulson")
puts "his name is #{person_1.name}"
person_1.age=30
puts person_1.age

person_2.name=("tyler durton")
puts "#{person_2.name}"

person_1.hello
person_2.speak("i can talk too. my name is #{person_2.name}")

puts person_1.inspect

# everything is a class
# puts person_1.class
# puts ["foo"].class
# puts "this is a string".class

