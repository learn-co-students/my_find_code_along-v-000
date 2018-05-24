require 'pry'

def my_find(collection)
  i = 0
  
=begin 
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end 
    i+=1
  end
=end 

  #below does the same as the commented out code
  while i < collection.length
    return collection[i] if yield(collection[i])
    i+=1
  end
  
end