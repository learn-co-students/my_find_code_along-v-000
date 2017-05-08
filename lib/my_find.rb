require 'pry'

def my_find(collection)
  index = 0
  while index < collection.size
    if yield(collection[index])
      return collection[index]
    end
    index += 1
  end
  return nil
end
