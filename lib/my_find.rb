require 'pry'

def my_find(collection)
  i = 0
  while i < collection.size
    return collection[i] if yield(collection[i])
    i += 1
  end
end

my_find(["Mark", "Stacy", "Helen", "Waldo", "Louise", "Tobias"]) { |name| name == "Waldo" }
