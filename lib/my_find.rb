require 'pry'

# The purpose of the find method is to return the first element in the array that evaluates to true

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end




# collection = (1..100).to_a
# my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }