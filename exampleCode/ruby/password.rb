puts "input your pw"
password = gets.chomp

while password.length < 4
puts "pw too short"
password = gets.chomp
end

puts "great pw"