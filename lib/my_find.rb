def my_find(collection)
i = 0
while i < collection.length
  return collection[i] if yield(collection[i])
end
  i = i + 1
  end
end
