require 'pry'

# My own solution
#
# def my_find(collection)
#   i = 0
#   switch = false
#   while i < collection.length && !switch
#     if yield(collection[i])
#       switch = true
#       result = collection[i]
#     end
#     i = i + 1
#   end
#   result ? result : nil
# end

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end