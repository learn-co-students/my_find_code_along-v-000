require 'pry'

def my_find(collection)
  count = 0

  while count < collection.size

    return collection[count] if yield(collection[count])

    count += 1
  end
end
