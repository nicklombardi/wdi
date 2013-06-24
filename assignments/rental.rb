class Person
  attr_accessor :name, :age, :gender, :apartment
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    return "#{@name} is a #{@age} year old #{@gender}"
  end
end

# me = Person.new("nick", "32", "male")
# puts me

class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
    @apartments = {}
  end

  def to_s
    "this building has #{apartments.count} apartments"
  end
end

class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters
  def initialize (name, rent, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = rent
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def is_occupied?
    @renters.any?
  end

  def to_s
      "#{@name} has #{@sqft} sqft and #{@renters.count} renters at #{@rent}/month"
  end
end

mckibben_lofts = Building.new("38 McKibben St", "loft", false, false, 7)
mckibben_lofts.apartments[:unit_a] = Apartment.new("A", 3200, 200, 1, 2)
mckibben_lofts.apartments[:unit_b] = Apartment.new("B", 2800, 300, 1, 1)
mckibben_lofts.apartments[:unit_a].renters << Person.new("David", 30, "male")
mckibben_lofts.apartments[:unit_a].renters << Person.new("Samantha", 20, "female")

# puts mckibben_lofts
# puts mckibben_lofts.apartments[:unit_a]
# mckibben_lofts.apartments[:unit_a].renters.each {|renter| puts renter}

building_1 = Building.new("10 paper street", "duplex", false, true, 2)
building_1.apartments[:apt_1] = Apartment.new("apartment 1", 2200, 500, 1, 1)
building_1.apartments[:apt_2] = Apartment.new("apartment 2", 2500, 600, 2, 1)
building_1.apartments[:apt_1].renters << Person.new("nick", 32, "male")
building_1.apartments[:apt_2].renters << Person.new("liam", 1, "male")
building_1.apartments[:apt_2].renters << Person.new("parker", 4, "male")


# puts building_1
# puts building_1.apartments[:apt_2]
# building_1.apartments[:apt_2].renters.each {|renter| puts renter}

building_2 = Building.new("461 ocean blvd", "hotel", true, true, 2)
building_2.apartments[:room_1] = Apartment.new("room 1", 150, 200, 1, 1)
building_2.apartments[:room_2] = Apartment.new("room 2", 300, 400, 2, 1)
building_2.apartments[:room_1].renters << Person.new("jamie", 30, "female")
building_2.apartments[:room_2].renters << Person.new("eric clapton", 60, "male")


# puts building_2
# puts building_2.apartments[:room_2]
# building_2.apartments[:room_2].renters.each {|renter| puts renter}

puts "the #{building_2.style} located at #{building_2.address} has #{building_2.apartments.count} rooms. #{building_2.apartments[:room_2].name} is rented by "


