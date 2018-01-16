require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
  	#if the return value of this yield is true, return the argument passed in
  	return collection[i] if yield(collection[i])
  	i += 1
  end
end