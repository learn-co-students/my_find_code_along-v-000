require 'pry'

def my_find(collection)
i=0 
while i<collection.length 
temp_element = yield(collection[i])
if temp_element 
  return collection[i]
end 
i+=1 
end 

end