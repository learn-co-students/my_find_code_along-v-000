require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end

collection = (1..1000).to_a
my_find(collection) {|i| i % 5 == 0 && i % 6 == 0 && i % 31 == 0}
