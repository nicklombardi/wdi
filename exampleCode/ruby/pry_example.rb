require 'pry'
require 'pry-debugger'

puts "enter first name"
first = gets.chomp
puts "enter last name"
last = gets.chomp
binding.pry
# launches pry
last = last.upcase
puts "your full name is #{first} #{last}"