require 'pry'

def my_find(collection)
  c=0
  

  while (c<collection.length)
  return collection[c] if (yield(collection[c]))
  c+=1
  end # put argument(s) here
  # code here

nil
end
