# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each {|x| result += x}
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  max = arr.max(2)
  max.sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2) { |value| return true if value.sum == n} 
  false
end 

# Part 2

def hello(name)
  # YOUR CODE HERE
  a = "Hello, "
  a << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  Regexp.new('^[qwrtypsdfghjklzxcvbnm]', Regexp:: IGNORECASE).match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # if /^[01]+$/.match?(s)
	#   s.to_i(2) % 4 == 0
  # else
  #	  false
  # end
  /^(0|00|([01]*00))$/.match?(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
# isbn
# price
def isbn  
  @ISBN
end

def price
  @price
end

def initialize(isbn, price)
  raise ArgumentError if isbn.empty? || price <=0
  @ISBN = isbn
  @price = price
end

def isbn=(isbn) 
    @ISBN = isbn 
end

def price=(price) 
    @price = price 
end


def price_as_string
  output = "%.2f" % price
   "$#{output}"
end
end
