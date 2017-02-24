require 'pry'

# Whereas #select will return all elements from the original collection that cause the block to
# evaluate to true, #find (or #detect) will only return the first element that makes the block true.

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end

collection = (1..100).to_a

my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
