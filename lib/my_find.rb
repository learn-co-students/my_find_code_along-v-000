require 'pry'

def my_find(collection)
   i = 0
   block_return_value = []

   while i < collection.length
      return collection[i] if yield(collection[i])
      i += 1
   end
end
