require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
   yield(collection[i])
#For each element in the collection, you're going to yield to the block.
     i += 1
  end
end



# def my_find(collection)
#   i = 0
#   while i < collection.length
#     i += 1

#   end
# end