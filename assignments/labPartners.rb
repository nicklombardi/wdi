wdi_class = ["Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Peter Lai", "Phillip Lamplugh", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]

def group_size
  group_size = 5
end

groups_formed = wdi_class.each_slice(group_size).to_a

groups_formed.each do |group|
  if group.length < group_size
    groups_formed[-2] << groups_formed[-1]
    groups_formed[-2].flatten!
    groups_formed.pop
  end
end

p groups_formed