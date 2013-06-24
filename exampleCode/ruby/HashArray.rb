# house has rooms with furniture

# hash - define room = {} Hash.new

# define value of room
house.room{:living_room] = Room.new("living room")

house.rooms << Room.new("kitchen")

# access info
house.rooms[:kitchen]
house.rooms[0]
house.rooms.each
house.rooms.first
house.rooms.last

kitchen.furniture[0]

house.rooms.each |room|  do
  room.furniture
end
