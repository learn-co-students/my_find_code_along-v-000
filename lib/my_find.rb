
collection = (1..100).to_a
def my_find(collection)
	if collection.empty?
		puts "The collection is EMPTY!"
	else
		i = 0
		while i < collection.length
			return collection[i] if yield(collection[i])
			i += 1
		end
	end
end

my_find(collection) {|i| i % 3 == 0 && i % 5 == 0}