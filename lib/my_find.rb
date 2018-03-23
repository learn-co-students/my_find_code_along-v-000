require 'pry'

def my_find(collection)
i = 0 
while i < collection.length 
if yield(collection[i])
  return collection[i]
end 
i += 1 
end
end

=begin extremely unlikely anyone will ever see this but I wanted to see if I could find the last matching item in an array instead of the first 

def my_find(collection)
i = 0 

while i < collection.length 
if yield(collection[collection.length - i - 1])
  return collection[collection.length - i - 1]
end 

i += 1 
end
end
=end