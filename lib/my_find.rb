require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i += 1 
  end
end


#refactored code :
#
# def my_find(collection)
#  i = 0 
# while i < collection.length
#      return collection[i] if  #added if to this line to refactor
#  yield(collection[i])
#    i += 1 
#  end
# end