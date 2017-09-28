# Code Along: Building the `find` method 

##Objectives
* Continue to practice using yield and blocks
* Gain a deeper understanding of `#find`


##Code Along Exercise

Fork and clone this lab. You'll be coding your solution in `lib/my_find.rb`. If at any point you want to follow along with the example, you can put a `binding.pry` anywhere in the method and run `ruby bin/my_find` in your terminal to pry around.

###Step 1
We need to iterate through each element in the passed in collection using the simple lower level iterator `while`. Remember, since this is a lower level iterator, we will need to explicitly add a counter we'll call `i`, and increment it each time we go into the loop (`i = i + 1`):

```ruby
def my_find(collection)
  i = 0
  while i < collection.length
    i = i + 1
  end
end
```


###Step 2
For each element in the collection, you're going to `yield` to the block. Let's look at the code and break down what's happening.

```ruby
def my_find(collection)
  i = 0
  while i < collection.length
    yield(collection[i])
    i = i + 1
  end
end
```

When this code is run and it hits the `yield` line, it is going to send whatever is passed in as the argument to the block. 

*Note: If you are confused about where the block comes from, it becomes clearer after the method is called. Here's an example:*

```ruby
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
```

As this code executes it will look like this:

```ruby
def my_find(collection)
  i = 0
  while i < 100
    yield(1)
      i = 0 + 1
  end
end
```

When it hits the `yield(1)`, it is going to send `1` to the block, evaluate it, and send the return value back to `yield`:

```ruby
my_find(collection) {|1| 1 % 3 == 0 and 1 % 5 == 0 }
  #=> false
```

In this example, ruby will send `false` (the return value of the block) back to the `my_find` method because `1 % 3 == 0 and 1 % 5 == 0` evaluates to `false`.

###Step 3: Using the return value of the yield block
The purpose of the `find` method is to *return the first element in the array* that evaluates to `true` not the return value itself. Therefore, let's use the return value to set a conditional. In other words, we want to say something like:

1. Yield to this block with the given argument
2. If the block returns true, `return` the *argument we passed into yield* AKA *the element in the array that evaluated to true*. This will exit the loop and the element will be the return value of the method.
3. If the block returns false, continue to the next element in the array

```ruby
def my_find(collection)
  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i = i + 1
  end
end
```

We can refactor this slightly by putting our `if` statement all on one line using a statement modifier:

```ruby
def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end
```

Sticking with our previous example:

```ruby
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
```
Our method will return the first element in the array that evaluates to `true`. In our example this would be 15.


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/my_find_code_along' title='Code Along: Building the find method'>Code Along: Building the find method</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/my_find_code_along'>My Find Lab</a> on Learn.co and start learning to code for free.</p>
