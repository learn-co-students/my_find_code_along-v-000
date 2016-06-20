def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      collection[i]
    else
    i = i + 1
  end
  end
  []
end
