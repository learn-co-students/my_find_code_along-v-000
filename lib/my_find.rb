require 'pry'

def my_find(collection)
  i=0
  block_array=[]
  length = collection.length
  while length > 0
   if yield(collection[i])
     return collection[i]
   end
    i+=1
    length-=1
    
  end
  
end