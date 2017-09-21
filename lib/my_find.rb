require 'pry'

def my_find(collection)
  i = 0
  n = collection.length

  while i < n
    return collection[i] if yield(collection[i])
    i += 1
  end

end
