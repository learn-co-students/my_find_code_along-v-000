require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])   #We can refactor this slightly by putting our if statement all on one line using a statement modifier:
   i = i + 1                                         #if yield(collection[i])
 end                                                 #return collection[i]
end

#    def my_find(collection)
#      i = 0
#   while i < collection.length
#    if yield(collection[i])
#      return collection[i]
#    end
#    i = i + 1
#  end
# end
