# require 'pry'

class Shelter
  attr_accessor :shelter, :client, :animal
  def initialize(shelter)
    @shelter = shelter
    @client = {}
    @animal = {}
  end
end

class Animal
  attr_accessor :name, :breed, :age, :gender, :favorite_toy, :client
  def initialize (name, breed, age, gender, favorite_toy)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toy = favorite_toy
    @client = []
  end
  def to_s
    puts "#{@name} is a #{@breed}, who is #{@age} years old, who is #{@gender} and a #{@favorite_toy} is it's favorite toy"
  end
end

class Client
  attr_accessor :name, :age, :gender, :number_kids, :number_pets, :wants_to_adopt, :wants_to_give_up
  def initialize (name, age, gender, number_kids, number_pets, wants_to_adopt, wants_to_give_up)
    @name = name
    @age = age
    @gender = gender
    @number_kids = number_kids
    @number_pets = number_pets
    @wants_to_adopt = wants_to_adopt
    @wants_to_give_up = wants_to_give_up
  end
  def to_s
    puts "#{@name} is #{@age} years old, who is #{@gender}, has #{number_kids} kids, #{number_pets} pets."
      if wants_to_adopt == true
          puts "who wants to adopt"
        else puts " and who does not want to adopt"
      end
        if wants_to_give_up == true
          puts " who wants to give up their pet"
        else puts "who does not want to give up their pet"
      end
  end
end

happi_tails = Shelter.new("HappiTails")
happi_tails.animal[:animal_1] = Animal.new("Waffles", "Cat", 14, "female", "Tickle-me-Elmo")
happi_tails.animal[:animal_1].client << Client.new("Nick", 32, "male", 0, 0, true, false)

puts happi_tails.animal.each {|x|x}

# if happi_tails.animal[:animal_1].client.to_s =~ /./
#   puts "#{happi_tails.animal[:animal_1].name} is adopted"
#   else
#   puts "#{happi_tails.animal[:animal_1].name} is available for adoption"
# end

happi_tails = Shelter.new("HappiTails")
happi_tails.client[:client_1] = Client.new("Mike", 23, "male", 2, 2, false, true)

puts happi_tails.client.each {|x|x}

# def adopt
#   puts "Would you like to adopt an animal, yes or no:"
#   adopt = gets.chomp.downcase
#   if adopt = yes
#     Client.new()
#   end
# end

# adopt

