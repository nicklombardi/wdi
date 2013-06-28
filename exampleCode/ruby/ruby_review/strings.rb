# http://www.ruby-doc.org/core-1.9.3/String.html#method-i-split
# Experimenting with example string.
example_string = "Hello class! This is an example string"
puts example_string.split('a').inspect

# Example data line
my_moon="Goodnight, Moon|2015|Chris Clearfield|www.awesomeimage.com"
puts my_moon.split("|").inspect



# Multiply a string
#puts (example_string * 3).inspect

# Concatenate strings with +
#puts ("Hello" + "world").inspect

#A multi line string
#multi_line = "This string
#as multiple
#lines"

# Without an each
# multi_line.each_line do |line|
#   puts "This is my line: #{line}"
# end

# # with an each
# # An enumartor is being returned
# # THEN, I'm running each on that.
# multi_line.each_line.each do |line|
#   puts "This is my line: #{line}"
# end