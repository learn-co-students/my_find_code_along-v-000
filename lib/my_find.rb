require 'pry'

def my_find(collection)

  collection.each do |i| 
    if yield(i) 
      return i 
    end
  end
  
  nil
end