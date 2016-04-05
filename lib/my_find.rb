require 'pry'


def my_find(collect)
  i = 0
  
  while i < collect.length
    if yield(collect[i])
      return collect[i]
    end
    i += 1
  end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }