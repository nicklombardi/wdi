a = ["dogs", "cats"]
b = ["dogs", 1, true]
a[0]
=> "dogs"

MONTHS = ["jan", "feb", "march", "april", "may", "june", "july", "aug", "sep", "oct", "nov", "dec"]
MONTHS[0]
=> "jan"
MONTHS[-13]
=> "jan"

my_favorite_beers = ["bud light", "corona", "beast"]
=> ["bud light", "corona", "beast"]
[my_favorite_beers.index("corona")
=> 1 -- finds index
my_favorite_beers << "3 beans"
=> ["bud light", "corona", "beast", "3 beans"] -- adds to end
my_favorite_beers.push("blue moon")
=> ["bud light", "corona", "beast", "3 beans", "blue moon"]  -- adds to end
my_old_favorite_beer = my_favorite_beers.pop
=> "blue moon" -- removes last item
my_favorite_beers
=> ["bud light", "corona", "beast", "3 beans"]
my_favorite_beers.reverse
=> ["3 beans", "beast", "corona", "bud light"] -- not permanent

class_grades = [[100, "great job"], [73, "try harder"]]
=> [[100, "great job"], [73, "try harder"]]
[12] pry(main)> class_grades[1]
=> [73, "try harder"]
[13] pry(main)> class_grades[1][1]
=> "try harder"

array = [1,2,3]
array.insert(3, 7)
=> [1, 2, 3, 7]