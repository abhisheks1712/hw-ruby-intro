# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  arr.each do |num|
    s += num
  end
  s
end

def max_2_sum arr
  s = 0
  if arr.length == 0
    s
  elsif arr.length ==1
    s = arr[0]
  else
    arr1 = arr.sort
    s = arr1[arr.length - 1] + arr1[arr.length - 2]
  end
end

def sum_to_n? arr, n
  arr1 = arr.combination(2).to_a
  arr1.map!{ |element| sum(element) }
  arr1.include?(n)
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
