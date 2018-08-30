require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
      # or return collection[i] if yield(collection[i]) with no "end" on the next line
    end
    i += 1
  end
end
