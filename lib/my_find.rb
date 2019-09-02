require 'pry'

def my_find(collection)
  selected = []
  i = 0

  while i < collection.size
    return collection[i] if yield(collection[i])
    i += 1
  end

end
