require 'pry'
# When it comes to doing a lower lever iterator we must have a counter



def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield (collection[i])
    #if the block returns true, the value will return true.
    #if value returns false then it will skip the if loop and proceed to nxt element
    i = i + 1
  end
end
