require 'pry'
# #my_find will return the first element in the array that evaluates to true

def my_find(collection)
  i = 0

  while i < collection.length
  #  if yield(collection[i])
  #    return collection[i]
  #  end
  # can refactor if statement all on one line using a statement modifier
    return collection[i] if yield(collection[i])
    i += 1
  end
end

## EXAMPLE if we call #my_find with
# collection = (1..100).to_a
# my_find(collection) {|i| i % 3 == 0 and i % 5 == 0}

# => 15
