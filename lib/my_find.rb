require 'pry'

def my_find(collection)

  i = 0
  found = nil

  while i < collection.length
    if yield(collection[i])
      found = collection[i]
      break
    else
      i+=1
    end
  end
  found
end