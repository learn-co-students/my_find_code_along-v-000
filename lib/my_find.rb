require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i]) # If the element in the array
    i += 1                                       # evaluates as true, return
  end                                            # the element
end