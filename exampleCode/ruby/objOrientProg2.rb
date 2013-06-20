class Person
  attr_accessor :name, :age, :gender, :eye_color

  def initialize(name, gender)
    @name = name
    @gender = gender
    @age = 0
  end

  def have_a_birthday
    @age = @age + 1
    speak("i had a birthday, and i am now #{age}")
  end

  # behavior/method
  def hello
    puts "hello"
  end

  def speak(words)
    puts words
  end
end

new_baby = Person.new("little jimmy", "male")
puts "#{new_baby.name} is #{new_baby.age}"
new_baby.have_a_birthday
new_baby.have_a_birthday