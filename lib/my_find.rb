require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return (collection[i]) if yield(collection[i]) #if the block returns true, return the argument we passed into yield AKA the element in the array that evaluated to true, if the block returns false, continue to the next element in the array
    i += 1
  end
end
