require 'pry'

def my_find(collection)
	found = nil
	collection.each {|num| 
		result = yield(num)
		if result 
			found = num
			break
		end
	}
	found
end
