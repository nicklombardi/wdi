require 'pg'
require 'pry'

puts "hey girl"

puts "first:"
first = gets.chomp
puts "last:"
last = gets.chomp
puts "age:"
age = gets.chomp
puts "gender:"
gender = gets.chomp
puts "dtgd:"
dtgd = gets.chomp
puts "phone:"
phone = gets.chomp


# this establishes a connection to the database
# db = PG.connect(:dbname => 'address_book', :host => 'localhost')
# executing sql code
# passing a string of sql to the database
# sql = "select first, age from contacts"
# db.exec(sql) do |result|
#   result.each do |row|
#     binding.pry
#   end
# end
# db.close

# insert into database
db = PG.connect(:dbname => 'address_book', :host => 'localhost')

# sql = "insert into contacts (first, last, age, gender, dtgd, phone) values ('ben', 'israeli', 26, 'm', true, '310-923-2319')"

sql = "insert into contacts (first, last, age, gender, dtgd, phone) values ('#{first}', '#{last}', #{age}, '#{gender}', #{dtgd}, '#{phone}')"


db.exec(sql)
db.close


