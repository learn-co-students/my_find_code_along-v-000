require 'pry'

def my_find(collection)
  i = 0
   while i < collection.length
     if yield(collection[i])    # or it could also be written as
       return collection[i]     # return(collection[i]) if yield(collection[i])
   end
     i += 1
  end
end
