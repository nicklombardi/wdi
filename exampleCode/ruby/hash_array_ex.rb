[1,2,3,4,5,6,7,8,9,10].select {|i| puts i.even?}

arr = [1,2,3, [4,5], 6,7,[4]]

arr.flatten.each do |num|
  num = num + 1
  p num
end

