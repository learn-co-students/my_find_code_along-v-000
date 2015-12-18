require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i]) #or return collection[1] if yield(colection[1])
      return collection[i]
    end
    i = i + 1
  end
end
