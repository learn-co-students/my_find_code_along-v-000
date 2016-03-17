require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])  #if true, looking for first element thats true
      return collection[i] #returns the first true element
    end
    i += 1
  end
end