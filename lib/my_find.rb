require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
  return collection[i] if yield(collection[i])
    i+=1
  end
end

collection = (1..100).to_a  

my_find(collection) { |item| item % 3 == 0 && item % 5 == 0}
