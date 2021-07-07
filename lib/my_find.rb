def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end

my_find([1,2,3]) {|i| i.odd?}  #==> 1

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 } # ==> 15
