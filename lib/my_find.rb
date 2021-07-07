require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i]) #return the argument if results is true
    i += 1
  end
end
