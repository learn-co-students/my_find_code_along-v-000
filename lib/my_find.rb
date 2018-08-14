require 'pry'

def my_find(collection)
  i = 0
  while i < collection.size 
    return collection[i] if yield(collection[i])
    i += 1 
  end
end

#collection = (1..100).to_a
#binding.pry