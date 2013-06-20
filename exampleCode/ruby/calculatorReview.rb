def subtract(a,b)
  return add(a,-b)
end

def add(a,b)
  return a+b
end

def multiply(a,b)
  return a*b
end

def divide(a,b)
  return a/b
end

# def calculate(x,y)
#   puts add(x,y)
#   puts subtract(x,y)
#   puts divide(x,y)
#   puts multiply(x,y)
# end

def prompt_numbers
  puts "give me a number"
  a = gets.chomp.to_f
  puts "give me another number"
  b = gets.chomp.to_f
  return a, b
end

def prompt_function
  puts "add, subtract, multiply, divide"
  return gets.chomp
end

def prompt
  a, b = prompt_numbers
  function = prompt_function
  return a, b, function
end

a, b, math_function = prompt

puts case math_function
when "add"
  add(a,b)
when "subtract"
  subtract(a,b)
when "multiply"
  multiply(a,b)
when "divide"
  divide(a,b)
end

