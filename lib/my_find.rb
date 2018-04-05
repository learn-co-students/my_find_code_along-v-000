require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
      return collection[i] if yield(collection[i])
    i += 1
  end
end

collection = (1..100).to_a
my_find(collection) {|i| 1 % 3 == 0 and i % 5 == 0}


#If at any point you want to follow along with the example, you can put a binding.pry anywhere in the method and run ruby bin/my_find in your terminal to pry around.
