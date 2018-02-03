# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  sum = 0
  for i in 0...arr.length
    sum += arr[i]
  end
  return sum
end

def max_2_sum arr
  sum = 0
  if arr.length == 1
    sum = arr.at(0)
  elsif arr.length >= 2
    sum = arr.max
    arr.delete_at(arr.index(arr.max))
    sum += arr.max
  end
  return sum
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end

  arr = arr.sort
  left = 0
  right = arr.index(arr.max)

  while left < right do
    if (arr.at(left) + arr.at(right)) == n
      return true
    elsif (arr.at(left) + arr.at(right)) < n
      left += 1
    else
      right -= 1
    end
  end 

  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.nil? || s == ''
    return false
  elsif s =~ /\A[aeiou]/i
    return false
  elsif s =~ /^\W/
    return false
  end 
  return true
end

def binary_multiple_of_4? s
  return false if s.nil? || s == ''
  return false if s.gsub(/[01]/,'') != ''
  return true if s.to_i(2) % 4 == 0
end
# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.nil? || isbn == ''
      raise ArgumentError.new('ISBN cannot be empty')
    else
      @isbn=isbn
    end

    if price <= 0
      raise ArgumentError.new('Price must be greater than or equal to 0')
    else
      @price=price
    end
  end

  def price_as_string
    return '$%.2f' % @price
  end
end
