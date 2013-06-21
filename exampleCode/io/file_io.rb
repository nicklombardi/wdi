f = File.new("data.txt", 'a+')

puts "add new person? (y/n)"
response = gets.chomp.downcase
while response == 'y'
  puts "name?"
  name = gets.chomp
  puts "age?"
  age = gets.chomp
  puts "gender?"
  gender = gets.chomp
  f.puts("#{name},#{age},#{gender}")

  print "would you like to add aonther person? (y/n)"
  response = gets.chomp.downcase
end

f.close

