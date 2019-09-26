require 'pry'

def my_find(collection)
  i = 0
  new_arr = []
  while i < collection.size
    return collection[i] if yield collection[i]
    i += 1
  end

end
