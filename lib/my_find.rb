require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
      break
    end
    i = i + 1
  end
end

my_collect = [1, 2, 3, 4,5,6,7,8,9,10,15, 45]

print my_find(my_collect){ |i| i % 3 == 0 && i % 5 == 0 }
