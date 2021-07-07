require 'pry'

#return first value that causes block to evaluate true

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end
  nil
end
