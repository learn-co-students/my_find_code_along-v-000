require 'pry'
collection = []

def my_find(collection)
  i = 0
  while i < collection.length
      return collection[i] if yield(collection[i])
      i += 1
  end
end

my_find(collection) {|i| i % 3 == 0 and i % 5 == 0}