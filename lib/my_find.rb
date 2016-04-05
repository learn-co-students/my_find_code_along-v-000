require 'pry'


def my_find(collect)
  index = 0
  
  while index < collect.length
    return collection[i] if yield(collection[i])
    i += 1
    puts "yomomma"
  end
end
