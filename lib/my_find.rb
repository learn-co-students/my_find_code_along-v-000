require 'pry'

def my_find(collection)
  i = 0
  finds = []

  while i < collection.size
    return collection[i] if yield(collection[i])
    i += 1
  end
end

y = []
coll = (1..100).to_a
my_find(coll) do |number|
  y.push number
end
#puts my_find([1,2,3]){ |i| i ==3 }
puts y 
