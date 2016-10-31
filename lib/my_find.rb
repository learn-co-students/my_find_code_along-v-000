require 'pry'

def my_find(collection)
  collection.length.times do |i|
    return collection[i] if yield(collection[i])
  end
  nil
end
