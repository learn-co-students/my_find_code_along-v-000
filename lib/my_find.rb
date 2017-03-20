require 'pry'

def my_find(collection)
  i=0
  passing_elements = []
  while i < collection.length
    return collection[i] if !!yield(collection[i]) == true
    i+=1
  end
  passing_elements[0]
end
