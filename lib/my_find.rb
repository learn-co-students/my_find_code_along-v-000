require 'pry'

def my_find(collection)
	i = 0
  while i < collection.length
  	# will only return is a true value is found
  	return collection[i] if yield(collection[i])
    i = i + 1
  end
end