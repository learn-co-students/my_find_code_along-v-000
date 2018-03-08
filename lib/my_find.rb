require 'pry'

def my_find(collection)
  arr_result = []
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end


end
