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


p = Person.new
p.speak("hello")
p.bite
puts p.fur=("red")

cat = Cat.new
cat.bite
puts cat.fur=("black")