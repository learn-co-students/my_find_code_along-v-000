require 'pry'
collection = (1...100).to_a
def my_find(collection)
i = 0
  while i < collection.size
    return collection[i] if yield(collection[i])
    i += 1
  end

end

my_find(collection){|x|
  if (x % 3 == 0 && x % 5 == 0)
    puts "FizzBuzz: #{x}"
  end
}
