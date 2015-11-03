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
  "Hello, "+name
end

def starts_with_consonant? s
  /\A[b-df-hj-np-tv-z]/i.match(s)
end

def binary_multiple_of_4? s
  if /\A[01]+\z/.match(s) && s.to_i(2) % 4 == 0
    true
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if isbn.length > 0 && price > 0
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end
  end
  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price
    @price
  end
  def price=(new_price)
      @price = new_price
  end
  def price_as_string
    "$"+ '%.2f' % @price.round(2).to_s
  end
end

