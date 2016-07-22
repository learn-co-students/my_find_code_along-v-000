require 'pry'

def my_find(collection)
  i = 0
  collect_here = []
  while 1< collection.length
   return collection[i] if yield(collection[i])

    end
    i +=1

end
