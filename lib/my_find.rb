require 'pry'

def my_find(collection)
  if collection.length == 0
    print "Empty collection!"
  else
    count = 0
    while count < collection.length
      if yield(collection[count])
        return collection[count]
      end
      count += 1
    end
  end
end