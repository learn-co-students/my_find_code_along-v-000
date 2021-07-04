require 'pry'

def my_find(collection)
  # 1: iterate through each element in the passed in collection using the simple lower level iterator while
  i = 0
  while i < collection.length
    # 2: for each element in the collection, yield to the block
    # 3: use the return value of the yield block
      return collection[i] if yield(collection[i]) # use statement modifier to refactor everything in one line
    i += 1
  end
end
