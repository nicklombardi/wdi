colors = ["red", "green", "blue"]

p colors.each {|color| color.downcase}

p colors.index("green")

addresses = ["10 broadway", "12 broadway", "17 broadway"]

first_address = addresses.index("10 broadway")
second_address = addresses.index("17 broadway")
distance = (first_address - second_address)

p distance
