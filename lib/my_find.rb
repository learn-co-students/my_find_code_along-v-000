require 'pry'
# this lab shows how the find method in ruby works behind the scenes
def my_find(collection)
    i = 0
    while i < collection.length
        return collection[i] if yield(collection[i])  #returns the collection element if return is true
        i += 1
    end

end
