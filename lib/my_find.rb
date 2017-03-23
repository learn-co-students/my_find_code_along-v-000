require 'pry'

def my_find(collection)
  for item in collection
    return item if yield(item)
  end
  nil
end