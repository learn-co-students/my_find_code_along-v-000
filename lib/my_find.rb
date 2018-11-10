require 'pry'

def my_find(collection)
  i = 0

  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end

end

#no yield clarity..
#I feel like Learn just keeps repeating itself
#Which would be wonderful if I knew exactly
#what it, that I was repeatedly writing, meant

#pardon my venting..

#no one will ever really read this
#...right?
#also.. I think it's so neat writing hidden messages!!!!
