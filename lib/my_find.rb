require 'pry'

def my_find(array)
  i = 0
  while i < array.length
    return array[i] if yield array[i]
    i += 1
  end
end

array = (1..100).to_a
my_find(array) {|i| i % 3 == 0 && i % 5 == 0}
