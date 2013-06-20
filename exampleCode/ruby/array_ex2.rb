students = ["student one", "student two", "student three"]

students.each { |student| p student.capitalize}
puts "___________"

students.each do |student|
  unless student == "student one"
    p student.capitalize
  else
    p student
  end
end
puts "___________"

3.times do |x|
  puts "awesome #{x} times"
end



