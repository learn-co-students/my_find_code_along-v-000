require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i]) #if returns true
      return collection[i]
    #also could do: return collectio[i] if yield(collection[i])
    end
    i = i + 1
  end
end
