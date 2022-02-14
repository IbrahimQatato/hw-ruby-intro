# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum arr.max(2)
end

def sum_to_n? arr, n
  i = 0
  while i < arr.length do
    arrCpy = arr.clone
    number = arrCpy[i]
    arrCpy.delete_at i
    arrCpy.each do |elem|
      if elem + number == n
        return true
      end
    end
    i+=1
  end
  return false
end

# Part 2

def hello(name)
  "Hello, "+name
end

def starts_with_consonant? s
  s[/\A(?=[^aeiou])(?=[a-z])/i]
end

def binary_multiple_of_4? s
  return s.to_i(2) % 4 == 0 if s[/^([01])+$/]
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    #do the checks
    if isbn.empty?
      raise ArgumentError, "improper isbn argument"
    end
    if price <= 0
      raise ArgumentError, "improper price argument"
    end
    @isbn = isbn 
    @price = price
  end

  def price_as_string
    "$%0.2f" % price
  end  
end
