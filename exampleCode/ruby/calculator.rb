class Float
  def remove_zero
    to_i == self ? to_i : self
  end
end

PI = 3.1415927

def get_two_numbers
  puts "enter the first number:"
  first = gets.chomp
  if first  =~ /\d+(?:\.\d+)?/
    first = first.to_f
    puts "enter the second number:"
    second = gets.chomp
    if second  =~ /\d+(?:\.\d+)?/
      second = second.to_f
      return first, second
    else
      puts "unrecognized input, please try again"
      calculator
    end
  else
    puts "unrecognized input, please try again"
    calculator
  end
end

def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def multiply(a,b)
  return a*b
end

def divide(a,b)
  return a/b
end


def calculator
  print "select a following function:
  add
  subtract
  multiply
  divide
  area of a circle
  area of a triangle
  volume of a sphere
  bmi

enter function:
  "
  function = gets.chomp.downcase
  case function
  when "add"
    a, b = get_two_numbers
    puts "answer is: " + add(a,b).remove_zero.to_s
  when "subtract"
    a, b = get_two_numbers
    puts "answer is: " + subtract(a,b).remove_zero.to_s
  when "multiply"
    a, b = get_two_numbers
    puts "answer is: " + multiply(a,b).remove_zero.to_s
  when "divide"
    a, b = get_two_numbers
    puts "answer is: " + divide(a,b).remove_zero.to_s
  when "area of a circle"
    puts "enter the radius: "
    radius = gets.chomp
    if radius =~ /\d+(?:\.\d+)?/
      circle_area = (PI*(radius.to_i**2))
      puts "area is #{circle_area.remove_zero}"
    else
      puts "unrecognized input, please try again"
      calculator
    end
  when "area of a triangle"
    puts "enter base: "
    base = gets.chomp
    if base =~ /\d+(?:\.\d+)?/
      puts "enter height: "
      height = gets.chomp
      if height =~ /\d+(?:\.\d+)?/
        area = 0.5*base.to_f*height.to_f
        puts "area is #{area.remove_zero}"
      else
        puts "unrecognized input, please try again"
        calculator
      end
    else
      puts "unrecognized input, please try again"
      calculator
    end
  when "volume of a sphere"
    puts "enter the radius: "
    radius = gets.chomp
    if radius =~ /\d+(?:\.\d+)?/
      sphere_volume = (4/3.0*PI*(radius.to_f**3))
      puts "area is #{sphere_volume.remove_zero}"
    else
      puts "unrecognized input, please try again"
      calculator
    end
  when "bmi"
    puts "enter weight in pounds: "
    lb = gets.chomp
    if lb =~ /\d+(?:\.\d+)?/
      puts "enter height in inches: "
      height = gets.chomp
      if height =~ /\d+(?:\.\d+)?/
        bmi = (lb.to_f/(height.to_f*height.to_f)*703)
        puts "bmi is #{bmi.remove_zero}"
      else
        puts "unrecognized input, please try again"
        calculator
      end
    else
      puts "unrecognized input, please try again"
      calculator
    end
  else
    puts "unrecognized function, please start over"
    calculator
  end
end

calculator