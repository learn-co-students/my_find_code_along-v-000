require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    #returns first element in array that evaluates to true
    return collection[i] if yield(collection[i])
    i += 1
  end
end
