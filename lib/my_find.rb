require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end

# my_find(1..100){|i| i % 3 == 0 && i % 5 == 0 }
