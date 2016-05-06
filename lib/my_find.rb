require 'pry'

def my_find(collection)
  i = 0   #Step 1: Iterate thru each element using 'While' from collection
  while i < collection.length 
    if yield(collection[i]) #Step 2: for each collection, yield it 2 the block
    #added IF statement after return method (step 3)
      return collection[i] #Step 3 using return value of the yield block.
      #The Purpose of the 'Find' method is 2 return the 1st element in the array
      #that evaluates true. 
      #IF the block RETURNS True, 'RETURN' the argument we passed into yield. 
    end 
    i = i + 1 #(step1) because while is a lower level iterator, a counter 'i' has  2 be added & incremented --> i = i + 1
 end 
end

    #Refractor by putting If statement all on 1 line 

   # def my_find(collection)
     # i = 0
      #while i < collection.length
      #  return collection[i] if yield(collection[i])
       # i = i + 1
      #end 
    #end 