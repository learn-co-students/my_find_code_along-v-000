
def my_find(collection)
  x = 0

    while x < collection.length
      if yield(collection[x])
        return collection[x]
      end
      x += 1
    end
end



collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0}
