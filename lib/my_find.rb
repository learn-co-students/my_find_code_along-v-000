require 'pry'


def my_find(collect)
  i = 0
  
  while i < collect.length
    return collection[i] if yield(collection[i])
    end
    i += 1
  end
end
