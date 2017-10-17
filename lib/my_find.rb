require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    #if yield(collection[i])
      #return collection[i]
      # refactor line 6,7 into one line if statement
      return collection[i] if yield(collection[i]) 
    
    i += 1
  end
end