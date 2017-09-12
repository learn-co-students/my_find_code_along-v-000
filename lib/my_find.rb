require 'pry'

def my_find(collection)
i = 0
yielded = []
while i < collection.length
  if yield(collection[i])
    return collection[i]
  i = i + 1
end

if yielded
