require 'pry'

def my_find(collection)
  result = []
  i = 0
  while i < collection.length
    result << yield(collection[i])
    i += 1
  end
end
