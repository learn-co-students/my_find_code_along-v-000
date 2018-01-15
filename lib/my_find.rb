require 'pry'

def my_find(collection)
  x = 0
  while x < collection.length
     if yield(collection[x])
       return collection[x]
     end
    x = x + 1
  end
end
