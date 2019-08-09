require 'pry'

def my_find(col)
  i = 0
  while i < col.length
    return col[i] if yield(col[i])
    i += 1
  end
end

# Yield Block
my_find(["0"]) { |i| i % 3 == 0 and i % 5 == 0 }