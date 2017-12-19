require 'pry'
#remember the purpose of find (the method we are modeling)
#returns the first element in the array that evaluates to true.
#the psuedo code for this logic is
  #Yields to this block with the given argument
  #if the block returns true, return the argument that was passed, aka
  #the element that evaluated to true. (this will exit the loop and the element
  #)
  #if the block returns false, continue to the next element in the array

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i]) #aka if it evaluates to true
      return collection[i]
    #when the yield(1) is hit, it sends the 1 to the block, evaluates it,
    # and then sends the return value back to yeild. In this case, the block is sending
    #true or false based on the element and the comparative/boolean evaluation statement
    #in the block. see ex block below
    end
    i += 1
  end
end


#example block
# my_find(collection) { |1| 1 % 3 ==0 and 1 % 5 ==0}
#=> evaluates to false
