require 'pry'

def my_find(collection)
  return 0 if collection.empty?
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i = i + 1
  end
end