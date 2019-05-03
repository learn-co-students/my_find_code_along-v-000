require 'pry'

#.find looks for the selected element
def my_find(collection)
i = 0
while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end
