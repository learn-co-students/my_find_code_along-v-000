require 'pry'

def my_find(collection)
  if block_given?
    i = 0
    while i<collection.length
      return collection[i] if yield(collection[i])
      i = i+1
    end
  else
    puts "Block not given"
  end
end
