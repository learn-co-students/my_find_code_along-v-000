require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length #low level iterator. We use this and the counter to iterate through collection
    return collection[i] if yield(collection[i]) #send whatever is passed in as an argument to the block
    i += 1  #Line 6 will stop the while loop if the yield returns true
  end
end
