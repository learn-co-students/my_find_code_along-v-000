require 'pry'

def my_find(collection)
  i = 0
  while i < collection.size
    return collection[i] if yield(collection[i])
    i = i.next
  end
end