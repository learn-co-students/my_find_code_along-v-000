require 'pry'

def my_find(collection)
  counter = 0
  bool = false
  while counter < collection.length && bool == false
    bool = yield(collection[counter])
    if bool
      return collection[counter]
    end
    counter+= 1
  end
  return
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0}
