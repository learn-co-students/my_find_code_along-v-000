def my_find(collection)
  i = 0
  while i < collection.length
    #If the block returns false,
    #continue to the next element in the array
    return collection[i] if yield(collection[i])
    end
    i = i + 1
  end
end
