require 'pry'

def my_find(collection)
  index_found = nil
  i = 0
  while i < collection.length
    index_found = collection[i] if yield collection[i]
    break if index_found
    i += 1
  end
  index_found
end