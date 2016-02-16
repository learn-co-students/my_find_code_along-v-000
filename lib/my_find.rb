require 'pry'

def my_find(collection)
 a = 0
 while a < collection.length
  if yield(collection[a])  
   return collection[a]
 end
  a += 1
  end
end

collection = (1..100).to_a
 my_find(collection) {|a| a % 3 == 0  and a % 5 == 0}
