require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end
collection = (1..100).to_a
my_find(collection) {|x| x % 3 == 0 and x % 5 == 0 }