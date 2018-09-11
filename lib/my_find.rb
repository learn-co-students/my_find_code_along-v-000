require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 0
  end
end
binding.pry
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0}
