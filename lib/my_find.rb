require 'pry'

def my_find(collection)
  x = 0
    while x < collection.length
     return collection[x] if yield(collection[x])
    x += 1
    end
  end