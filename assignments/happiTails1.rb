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
  # def to_s
  #   puts "#{@name} is a #{@breed}, who is #{@age} years old, who is #{@gender} and a #{@favorite_toy} is its favorite toy."
  # end
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

  # def to_s
  #   puts "#{@name} is a #{@age} year old #{@gender} with #{number_kids} kids and #{number_pets} pets,"
  #     if wants_to_adopt == true
  #         puts "who wants to adopt"
  #     elsif wants_to_give_up == true
  #         puts " who wants to give up their pet"
  #     else puts "and who does not want to adopt or give up their pet."
  #     end
  # end
end

happi_tails = Shelter.new("HappiTails")
happi_tails.animal[:animal_1] = Animal.new("Waffles", "Cat", 14, "female", "Tickle-me-Elmo")
happi_tails.animal[:animal_1].client << Client.new("Nick", 32, "male", 0, 0, true, false)
happi_tails.animal[:animal_2] = Animal.new("Hedwig", "Snowy Owl", 7, "female", "toy wand")
happi_tails.animal[:animal_3] = Animal.new("Crookshanks", "Cat", 10, "male", "wizard chess piece")

# puts happi_tails.animal.each {|x| x}

#happi_tails = Shelter.new("HappiTails")
happi_tails.client[:client_1] = Client.new("Mike", 23, "male", 2, 2, false, true)
happi_tails.client[:client_2] = Client.new("Harry", 33, "male", 3, 0, true, false)
happi_tails.client[:client_3] = Client.new("Hermione", 33, "female", 2, 1, false, false)

# puts happi_tails.client.each {|x| x}


# if happi_tails.animal[:animal_2].client.to_s =~ /./
#   puts "#{happi_tails.animal[:animal_2].name} is adopted"
#   else
#     puts "#{happi_tails.animal[:animal_2].name} is available for adoption"
# end

if happi_tails.animal[:animal_2].client.to_s =~ /./
  puts "#{happi_tails.animal[:animal_2].name} is adopted"
  else
    happi_tails.animal[:animal_2].client << happi_tails.client[:client_1]
    puts "#{happi_tails.animal[:animal_2].name} was adopted by #{happi_tails.animal[:animal_2].client[0].name.to_s}"
    # remove animal from shelter
      happi_tails.animal.delete(:animal_2)
end

puts happi_tails.animal[:animal_2].inspect
# puts happi_tails.animal[:animal_1].client[0].name

# binding.pry