module Math
  def add
  end
  def subtract
  end
end

module Word
  def reverse
  end
end

class Person
  include Math
  include Word
end

p = Person.new
p.add