require 'pry'

def my_find(collection)
find_array = []
i = 0 
while i < collection.length 
  return collection[i] if 
  yield(collection[i])
  i += 1 
end

end

my_find((1..100).to_a) do |x|
x % 3 == 0 && x % 5 == 0 
end 