require 'pry'
require_relative '../lib/my_find.rb'

def my_find(collection)
    i = 0
    while i < collection.length
        return collection[i] if yield(collection[i])
        i = i + 1
    end
  end