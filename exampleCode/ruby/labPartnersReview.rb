students = ["Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Peter Lai", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]
students = students.shuffle!

print "group size:"

group_size = gets.to_i
number_of_groups = students.count / group_size

number_of_groups.times do |group_number|
  puts "group #{group_number}"
  puts "#{students.pop(group_size.join(', '))}"
end

puts ", #{students.join(', ')}" if students.any?