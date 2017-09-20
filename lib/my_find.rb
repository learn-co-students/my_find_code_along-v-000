require 'pry'

def my_find(collection)
    i = 0
    after_block = []
    while i < collection.length
      return collection[i] if yield(collection[i])
      i += 1
    end
end
