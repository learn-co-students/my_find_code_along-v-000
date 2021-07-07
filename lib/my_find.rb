require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end

p my_find((1..100).to_a) { |el| el % 3 == 0 && el % 5 == 0 }
