require 'pry'

#Iterate through each element in a passed argument (collection) using while. Use a counter (i) and increment each
#time you go into the loop
collection=(31..100).to_a # creates a variable that conains all numbers from 1 - 100 and converts it to an array

def my_find (collection) # collection is the array described above, passed to the method my_find
  i = 0  # setting up a counter
  while i < collection.length #while the counter is less than the length of the array do something
    return collection[i] if yield(collection[i]) #this is the "do something": send an ellement ([i]) to a block and if
    #                                             it is returned to the method as 'true' then make it the return value of the method
    i+=1 # if the condition above is not met then add one to the counter and cycle through the next element in collection
  end #ends the while statement
end #ends the method

# This is the block that gets yielded to
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

# this tests the element in the array to see if it is evenly divided by 3 and 5 (==0 means there is no remainder)
# The result (true or false) is sent back to the method and evaluated to determine the next steps.
