require 'pry'
#Rememeber to comment code 

def my_find(collection)
  i = 0 
  while i < collection.length 
      return collection[i] if
    yield(collection[i])
    i = i += 1 #i can put += if its easier to remember
  end
end